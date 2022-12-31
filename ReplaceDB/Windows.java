package ReplaceDB;

import java.util.concurrent.TimeUnit;

public class Windows {
	public static void main(String[] args) throws Exception {
        // Kill tkStrike
		Runtime.getRuntime().exec("taskkill /F /IM tkStrikeGen2.exe");
        // Start a new thread process
		Runtime runtime = Runtime.getRuntime();
        // Save the H2 DB location
		String h2 = "C:\\Users\\" + username() + "\\AppData\\Local\\tkStrikeGen2\\app\\lib\\h2-1.4.199.jar";
        // Save the H2 Command Script
		String h2Command = "org.h2.tools.RunScript";
        // Save the H2 DB access url
		String url = "jdbc:h2:~//AppData\\Local\\tkStrikeGen2\\app\\db\\tkStrike30";
        // Save the commands to replace the subcategory table
		String[] subcategory = { "java", "-cp", h2, h2Command, "-url", url, "-user", "SA", "-script",
				directory() + "/Subcategory.sql" };
        // Save the commands to replace the thresholds table
		String[] thresholds = { "java", "-cp", h2, h2Command, "-url", url, "-user", "SA", "-script",
				directory() + "/Default_Category_Thresholds.sql" };
        // Save the commands to replace the gap table
		String[] gap = { "java", "-cp", h2, h2Command, "-url", url, "-user", "SA", "-script",
				directory() + "/Default_Gap.sql" };
        // Pause the system for 3 seconds to finish the task kill
		TimeUnit.SECONDS.sleep(3);
        // Replace the subcategory table in the running process thread
		runtime.exec(subcategory);
        // Pause the system for 1 seconds to finish the task kill
		TimeUnit.SECONDS.sleep(1);
        // Replace the thresholds table in the running process thread
		runtime.exec(thresholds);
        // Pause the system for 1 seconds to finish the task kill
		TimeUnit.SECONDS.sleep(1);
        // Replace the gap table in the running process thread
		runtime.exec(gap);
        // Pause the system for 1 seconds to finish the task kill
		TimeUnit.SECONDS.sleep(1);
        // Open tkStrike
		executeCommand("C:\\Users\\" + username() + "\\AppData\\Local\\tkStrikeGen2\\tkStrikeGen2.exe");
    }

    // private static String getOperatingSystem() {
    //     String os = System.getProperty("os.name");
    //     return os;
    // }

    // Return the username of the system and solve for spaces
    private static String username() {
        String username = System.getProperty("user.name");
        // if (getOperatingSystem().contains("Mac")) {
        //     username.replace(" ", "\\ ");
        // } else if (getOperatingSystem().contains("Windows")) {
        //     username.replace(" ", "^ ");
        // }
        return username;
    }

    // Return the current directory of the file and solve for spaces
    private static String directory() {
        String directory = System.getProperty("user.dir");
        // if (getOperatingSystem().contains("Mac")) {
        //     directory.replace(" ", "\\ ");
        // } else if (getOperatingSystem().contains("Windows")) {
        //     directory.replace(" ", "^ ");
        // }
        return directory;
    }

    // Execute commands better and more cleanly
    private static void executeCommand(String command) {
        try {
            Runtime.getRuntime().exec(command);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}