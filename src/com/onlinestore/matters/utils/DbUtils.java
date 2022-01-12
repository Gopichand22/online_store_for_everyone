package com.onlinestore.matters.utils;

import java.sql.Connection;

public interface DbUtils {
	Connection makeConnection(Connection con);
}
