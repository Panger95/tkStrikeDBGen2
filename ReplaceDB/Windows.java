package ReplaceDB;

import java.util.concurrent.TimeUnit;
import java.io.File;

public class Windows {
	public static void main(String[] args) throws Exception {
		Runtime.getRuntime().exec("taskkill /F /IM tkStrikeGen2.exe");
		Runtime runtime = Runtime.getRuntime();
		String h2 = "C:\\Users\\" + username() + "\\AppData\\Local\\tkStrikeGen2\\app\\lib\\h2-1.4.199.jar";
		String h2Command = "org.h2.tools.RunScript";
		String url = "jdbc:h2:~//AppData\\Local\\tkStrikeGen2\\app\\db\\tkStrike30";
		String[] subcategory = { "java", "-cp", h2, h2Command, "-url", url, "-user", "SA", "-script",
				directory() + "/subcategory.sql" };
		String[] thresholds = { "java", "-cp", h2, h2Command, "-url", url, "-user", "SA", "-script",
				directory() + "/Default_Category_Thresholds.sql" };
		String[] gap = { "java", "-cp", h2, h2Command, "-url", url, "-user", "SA", "-script",
				directory() + "/Default_Gap.sql" };
		TimeUnit.SECONDS.sleep(3);
		runtime.exec(subcategory);
		TimeUnit.SECONDS.sleep(1);
		runtime.exec(thresholds);
		TimeUnit.SECONDS.sleep(1);
		runtime.exec(gap);
		TimeUnit.SECONDS.sleep(1);
		executeCommand("C:\\Users\\" + username() + "\\AppData\\Local\\tkStrikeGen2\\tkStrikeGen2.exe");
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