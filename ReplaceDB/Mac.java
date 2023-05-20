package ReplaceDB;

import java.io.File;

public class Mac {
    public static void main(String[] args) throws Exception {

        /**
         *
         * Step 1: Kill tkStrike
         * Step 2: Wait for the task to be finished
         * Step 3: Run the Subcategory sql script in the file location with H2
         * Step 4: Wait for the task to be finished
         * Step 5: Run the Default_Category_Thresholds sql script in the file location
         * with H2
         * Step 6: Wait for the task to be finished
         * Step 7: Run the Default_Gap sql script in the file location with H2
         * Step 8: Wait for the task to be finished
         * Step 6: Open tkStrikeGen2
         *
         **/

        // Kill tkStrike
        Runtime.getRuntime().exec("killall tkStrikeGen2");
        // Wait for the system to finish the task kill
        Thread.sleep(3000);
        // Replace the subcategory table in the running process thread
        replaceTable("Subcategory.sql");
        // Replace the thresholds table in the running process thread
        replaceTable("Default_Category_Thresholds.sql");
        // Replace the gap table in the running process thread
        replaceTable("Default_Gap.sql");
        // Open tkStrike
        executeCommand("open", getMacAppPath());
    }

    // Replace a table using H2 Command Script
    private static void replaceTable(String scriptName) {
        try {
            String h2 = h2Version();
            String h2Command = "org.h2.tools.RunScript";
            String url = "jdbc:h2:/Users/" + getUsername() + "/.tkStrike/db/tkStrike30";
            String[] command = { "java", "-cp", h2, h2Command, "-url", url, "-user", "SA", "-script",
                    getScriptPath(scriptName) };
            Process process = new ProcessBuilder(command).start();
            process.waitFor();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Return the username of the system and solve for spaces
    private static String getUsername() {
        String username = System.getProperty("user.name");
        return username;
    }

    // Return the current directory of the file and solve for spaces
    private static String getDirectory() {
        String directory = System.getProperty("user.dir");
        return directory;
    }

    // Get the script file path with solved spaces
    private static String getScriptPath(String scriptName) {
        return getDirectory() + "/" + scriptName;
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

    // Get the Mac application path
    private static String getMacAppPath() {
        return "/Applications/tkStrikeGen2.app";
    }

    // Get the H2 DB file name
    private static String h2Version() {
        String directoryPath = "/Applications/tkStrikeGen2.app/Contents/Java/lib/";
        File directory = new File(directoryPath);
        File[] files = directory.listFiles();
        for (File file : files) {
            if (file.isFile() && file.getName().startsWith("h2-")) {
                String fileName = file.getName();
                return directoryPath + fileName;
            }
        }
        return null;
    }
}