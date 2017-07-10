package fr.manu.experiments;

import java.net.InetAddress;
import java.net.UnknownHostException;

import net.codestory.http.WebServer;

public class Context {

	private static final String whoami() {
		try {
			return InetAddress.getLocalHost().getHostName();
		} catch (UnknownHostException e) {
			return e.getMessage();
		}
	}

	public static void main(String[] args) throws Exception {
		new WebServer().configure(
				routes -> routes
						.get("/ping", "Pong from " + whoami())
		// .get("/Test", (context) -> "Other Test")
		)
				.start(80);

	}

}
