package ReplaceDB;

import java.io.File;
import java.io.IOException;

public class Main {
	public static void main(String[] args)
	{

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

		// full file path
		File file1 = new File("/Users/Andrew/.tkStrike/db/tkStrike30.mv.db");
		System.out.println("[File] : " + file1);
		printFilePath(file1);

		// a file name
		File file2 = new File("tkStrike30.mv.db");
		System.out.println("\n[File] : " + file2);
		printFilePath(file2);

		// a file contain `..`
		File file4 = new File("/../tkStrike30.mv.db");
		System.out.println("\n[File] : " + file4);
		printFilePath(file4);
	}

	// If a single file name, not full path, the file refer to
	// System.getProperty("user.dir") + file
	static void printFilePath(File file) {
		// print File = print file.getPath()
		System.out.printf("%-25s : %s%n", "file.getPath()", file.getPath());
		System.out.printf("%-25s : %s%n", "file.getAbsolutePath()",
				file.getAbsolutePath());
		try {
			System.out.printf("%-25s : %s%n", "file.getCanonicalPath()",
					file.getCanonicalPath());
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.printf("%-25s : %s%n", "Parent Path", getParentPath(file));
	}

	// if unable to get parent, try substring to get the parent folder.
	private static String getParentPath(File file) {
		if (file.getParent() == null) {
			String absolutePath = file.getAbsolutePath();
			return absolutePath.substring(0,
					absolutePath.lastIndexOf(File.separator));
		} else {
			return file.getParent();
		}
	}

}