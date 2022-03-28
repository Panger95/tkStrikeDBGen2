package ReplaceDB;

import java.util.concurrent.TimeUnit;
import java.io.File;

public class Main {
	public static void main(String[] args) throws Exception {

		/**
		*
		* Step 1: Find the location of tkStrike DB
		* Step 2: Delete the tkStrike DB
		* Step 3: Open tkStrike
		* Step 4: Wait 25 seconds for tkStrike to open and reload the DB
		* Step 5: Kill tkStrike
		* Step 6: Wait 3 seconds for tkStrike to quit
		* Step 7: Run the subcategory sql script in the file location with H2
		* Step 8: Run the default_category sql script in the file location with H2
		* Step 9: Run the default_gap sql script in the file location with H2
		* Step 10: Open tkStrike
		*
		**/

		if (getOperatingSystem().contains("Mac")) {
			ProcessHandle
				.allProcesses()
				.filter(p -> p.info().commandLine().map(c -> c.contains("tkStrikeGen2")).orElse(false))
				.findFirst()
					.ifPresent(ProcessHandle::destroy);
			TimeUnit.SECONDS.sleep(3);
			new File("//Users//" + username() + "//.tkStrike//db//tkStrike30.mv.db").delete();
			executeCommand("open //Applications//tkStrikeGen2.app");
			TimeUnit.SECONDS.sleep(25);
			ProcessHandle
					.allProcesses()
					.filter(p -> p.info().commandLine().map(c -> c.contains("tkStrikeGen2")).orElse(false))
					.findFirst()
					.ifPresent(ProcessHandle::destroy);
			TimeUnit.SECONDS.sleep(3);
			String h2 = "/Applications/tkStrikeGen2.app/Contents/Java/lib/h2-1.4.199.jar";
			String h2Command = "org.h2.tools.RunScript";
			Runtime runtime = Runtime.getRuntime();
			String[] subcategory = { "java", "-cp", h2, h2Command, "-url", "jdbc:h2:/Users/" + username()
					+ "/.tkStrike/db/tkStrike30", "-user", "SA", "-script", directory() + "/subcategory.sql" };
			String[] thresholds = { "java", "-cp", h2, h2Command, "-url", "jdbc:h2:/Users/" + username()
					+ "/.tkStrike/db/tkStrike30", "-user", "SA", "-script",
					directory() + "/Default_Category_Thresholds.sql" };
			String[] gap = { "java", "-cp", h2, h2Command, "-url", "jdbc:h2:/Users/" + username()
					+ "/.tkStrike/db/tkStrike30", "-user", "SA", "-script", directory() + "/Default_Gap.sql" };
			runtime.exec(subcategory);
			TimeUnit.SECONDS.sleep(1);
			runtime.exec(thresholds);
			TimeUnit.SECONDS.sleep(1);
			runtime.exec(gap);
			TimeUnit.SECONDS.sleep(1);
			executeCommand("open //Applications//tkStrikeGen2.app");
		} else if (getOperatingSystem().contains("Windows")) {
			Runtime.getRuntime().exec("taskkill /F /IM tkStrikeGen2.exe");
			TimeUnit.SECONDS.sleep(3);
			new File("C:\\Users\\" + username() + "\\AppData\\Local\\tkStrikeGen2\\app\\db\\tkStrike30.mv.db").delete();
			executeCommand("C:\\Users\\" + username() + "\\AppData\\Local\\tkStrikeGen2\\tkStrikeGen2.exe");
		} else {
			System.out.println("YOU'VE DONE FUCKED UP, GO FUCK YOURSELF, I'M NOT MAKING THIS WORK FOR FUCKING UBUNTU/SOLARIS");
		}
	}

	private static String getOperatingSystem() {
		String os = System.getProperty("os.name");
		return os;
	}

	private static String username() {
		String username = System.getProperty("user.name");
		if (getOperatingSystem().contains("Mac")) {
			username.replace(" ", "\\ ");
		} else if (getOperatingSystem().contains("Windows")) {
			username.replace(" ", "^ ");
		}
		return username;
	}

	private static String directory() {
		String directory = System.getProperty("user.dir");
		if (getOperatingSystem().contains("Mac")) {
			directory.replace(" ", "\\ ");
		} else if (getOperatingSystem().contains("Windows")) {
			directory.replace(" ", "^ ");
		}
		return directory;
	}

	private static void executeCommand(String command) {
		try {
			Runtime.getRuntime().exec(command);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}