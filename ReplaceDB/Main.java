package ReplaceDB;

import java.io.File;

public class Main {
	public static void main(String[] args) throws Exception {

		/**
		 *
		 * Step 1: Kill tkStrike if it is running
		 * Step 2: Find the location of tkStrike DB
		 * Step 3: Delete the tkStrike DB
		 * Step 4: Open tkStrike
		 * Step 5: Wait as long as set in script file seconds for tkStrike to open and
		 * reload the DB
		 * Step 6: Run the specific OS program file to reload the DB
		 *
		 **/

		if (isMac()) {
			// Kill tkStrike if it is running
			Runtime.getRuntime().exec("killall tkStrikeGen2");
			// Wait for the system to finish the task kill
			Thread.sleep(3000);
			// Delete the bad tkStrike DB
			deleteFile(getMacDBPath());
			// Open tkStrike to reload an original copy of the DB
			executeCommand("open", getMacAppPath());
		} else if (isWindows()) {
			// Kill tkStrike if it is running
			Runtime.getRuntime().exec("taskkill /F /IM tkStrikeGen2.exe");
			// Wait for the system to finish the task kill
			Thread.sleep(3000);
			// Delete the bad tkStrike DB
			deleteFile(getWindowsDBPath());
			// Open tkStrike to reload an original copy of the DB
			executeCommand(getWindowsAppPath());
		} else {
			System.out.println("Unsupported operating system. Only Mac and Windows are supported.");
		}
	}

	// Check if the operating system is Mac
	private static boolean isMac() {
		String osName = System.getProperty("os.name").toLowerCase();
		return osName.contains("mac");
	}

	// Check if the operating system is Windows
	private static boolean isWindows() {
		String osName = System.getProperty("os.name").toLowerCase();
		return osName.contains("win");
	}

	// Execute commands better and more cleanly
	private static void executeCommand(String... command) {
		try {
			ProcessBuilder processBuilder = new ProcessBuilder(command);
			processBuilder.start();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// Delete a file
	private static void deleteFile(String filePath) {
		File file = new File(filePath);
		if (file.exists()) {
			file.delete();
		}
	}

	// Get the Mac DB path
	private static String getMacDBPath() {
		String username = System.getProperty("user.name");
		return "/Users/" + username + "/.tkStrike/db/tkStrike30.mv.db";
	}

	// Get the Mac application path
	private static String getMacAppPath() {
		return "/Applications/tkStrikeGen2.app";
	}

	// Get the Windows DB path
	private static String getWindowsDBPath() {
		String username = System.getProperty("user.name");
		return "C:\\Users\\" + username + "\\AppData\\Local\\tkStrikeGen2\\app\\db\\tkStrike30.mv.db";
	}

	// Get the Windows application path
	private static String getWindowsAppPath() {
		String username = System.getProperty("user.name");
		return "C:\\Users\\" + username + "\\AppData\\Local\\tkStrikeGen2\\tkStrikeGen2.exe";
	}
}