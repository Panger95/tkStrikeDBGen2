package ReplaceDB;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;

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

		// full path
		Path path1 = Paths.get("/Users/Andrew/.tkStrike/db/tkStrike30.mv.db");
		System.out.println("\n[Path] : " + path1);
		printPath(path1);

		// file name
		Path path2 = Paths.get("tkStrike30.mv.db");
		System.out.println("\n[Path] : " + path2);
		printPath(path2);

		// a path contains `..`
		Path path4 = Paths.get("/../tkStrike30.mv.db");
		System.out.println("\n[Path] : " + path4);
		printPath(path4);
	}

	static void printPath(Path path) {

		System.out.printf("%-25s : %s%n", "path", path);
		System.out.printf("%-25s : %s%n", "path.toAbsolutePath()",
				path.toAbsolutePath());
		System.out.printf("%-25s : %s%n", "path.getParent()", path.getParent());
		System.out.printf("%-25s : %s%n", "path.getRoot()", path.getRoot());

		try {

			if (Files.notExists(path)) {
				return;
			}

			// default, follow symbolic link
			System.out.printf("%-25s : %s%n", "path.toRealPath()",
					path.toRealPath());
			// no follow symbolic link
			System.out.printf("%-25s : %s%n", "path.toRealPath(nofollow)",
					path.toRealPath(LinkOption.NOFOLLOW_LINKS));

			// alternative to check isSymbolicLink
			/*
			 * if (Files.isSymbolicLink(path)) {
			 * Path link = Files.readSymbolicLink(path);
			 * System.out.println(link);
			 * }
			 */

		} catch (IOException e) {
			e.printStackTrace();
		}

	}
}