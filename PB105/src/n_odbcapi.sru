$PBExportHeader$n_odbcapi.sru
forward
global type n_odbcapi from nonvisualobject
end type
end forward

global type n_odbcapi from nonvisualobject autoinstantiate
end type

type prototypes
Function long SQLAllocHandle ( &
	integer HandleType, &
	ulong InputHandle, &
	Ref ulong OutputHandlePtr &
	) Library "odbc32.dll"

Function long SQLFreeHandle ( &
	integer HandleType, &
	ulong Handle &
	) Library "odbc32.dll"

Function long SQLSetEnvAttr ( &
	ulong EnvironmentHandle, &
	long Attribute, &
	ulong ValuePtr, &
	long StringLength &
	) Library "odbc32.dll"

Function long SQLGetDiagRec ( &
	integer HandleType, &
	ulong Handle, &
	integer RecNumber, &
	Ref string Sqlstate, &
	Ref long NativeErrorPtr, &
	Ref string MessageText, &
	integer BufferLength, &
	Ref integer TextLengthPtr &
	) Library "odbc32.dll" Alias For "SQLGetDiagRec;Ansi"

Function long SQLBindCol ( &
	ulong StatementHandle, &
	UInt ColumnNumber, &
	integer TargetType, &
	Ref string TargetValuePtr, &
	long BufferLength, &
	Ref integer StrLen_or_IndPtr &
	) Library "odbc32.dll" Alias For "SQLBindCol;Ansi"

Function long SQLBindCol ( &
	ulong StatementHandle, &
	UInt ColumnNumber, &
	integer TargetType, &
	Ref integer TargetValuePtr, &
	long BufferLength, &
	Ref integer StrLen_or_IndPtr &
	) Library "odbc32.dll"

Function long SQLBindCol ( &
	ulong StatementHandle, &
	UInt ColumnNumber, &
	integer TargetType, &
	Ref long TargetValuePtr, &
	long BufferLength, &
	Ref integer StrLen_or_IndPtr &
	) Library "odbc32.dll"

Function long SQLFetch ( &
	ulong statementhandle &
	) Library "odbc32.dll"

Function long SQLDataSources ( &
	ulong EnvironmentHandle, &
	UInt Direction, &
	Ref string ServerName, &
	integer BufferLength1, &
	Ref integer NameLength1Ptr, &
	Ref string Description, &
	integer BufferLength2 , &
	Ref integer NameLength2Ptr &
	) Library "odbc32.dll" Alias For "SQLDataSources;Ansi"

Function long SQLTables ( &
	ulong StatementHandle, &
	string CatalogName, &
	integer NameLength1, &
	string SchemaName, &
	integer NameLength2, &
	string TableName, &
	integer NameLength3, &
	string TableType, &
	integer NameLength4 &
	) Library "odbc32.dll" Alias For "SQLTables;Ansi"

Function long SQLColumns ( &
	ulong StatementHandle, &
	string CatalogName, &
	integer NameLength1, &
	string SchemaName, &
	integer NameLength2, &
	string TableName, &
	integer NameLength3, &
	string ColumnName, &
	integer NameLength4 &
	) Library "odbc32.dll" Alias For "SQLColumns;Ansi"

Function long SQLPrimaryKeys ( &
	ulong StatementHandle, &
	string CatalogName, &
	integer NameLength1, &
	string SchemaName, &
	integer NameLength2, &
	string TableName, &
	integer NameLength3 &
	) Library "odbc32.dll" Alias For "SQLPrimaryKeys;Ansi"

Function long SQLForeignKeys ( &
	ulong StatementHandle, &
	string PKCatalogName, &
	integer NameLength1, &
	string PKSchemaName, &
	integer NameLength2, &
	string PKTableName, &
	integer NameLength3, &
	string FKCatalogName, &
	integer NameLength4, &
	string FKSchemaName, &
	integer NameLength5, &
	string FKTableName, &
	integer NameLength6 &
	) Library "odbc32.dll" Alias For "SQLForeignKeys;Ansi"

Function long SQLProcedures ( &
	ulong StatementHandle, &
	string CatalogName, &
	integer NameLength1, &
	string SchemaName, &
	integer NameLength2, &
	string ProcName, &
	integer NameLength3 &
	) Library "odbc32.dll" Alias For "SQLProcedures;Ansi"

Function long SQLGetInfo ( &
	ulong ConnectionHandle, &
	integer InfoType, &
	Ref string InfoValuePtr, &
	integer BufferLength, &
	Ref int StringLengthPtr &
	) Library "odbc32.dll" Alias For "SQLGetInfo;Ansi"

Function long SQLExecDirect ( &
	ulong StatementHandle, &
	string StatementText, &
	long TextLength &
	) Library "odbc32.dll" Alias For "SQLExecDirect;Ansi"

Function long SQLBrowseConnect ( &
	ulong ConnectionHandle, &
	string InConnectionString, &
	integer StringLength1, &
	Ref string OutConnectionString, &
	integer BufferLength, &
	Ref integer StringLength2Ptr &
	) Library "odbc32.dll" Alias For "SQLBrowseConnect;Ansi"

Function long SQLSetConnectAttr ( &
	ulong ConnectionHandle, &
	integer Attribute, &
	long ValuePtr, &
	integer StringLength &
	) Library "odbc32.dll"

Function long SQLSetConnectAttr ( &
	ulong ConnectionHandle, &
	integer Attribute, &
	string ValuePtr, &
	integer StringLength &
	) Library "odbc32.dll" Alias For "SQLSetConnectAttr;Ansi"

end prototypes

type variables
// return values from functions
Constant Long SQL_SUCCESS				= 0
Constant Long SQL_SUCCESS_WITH_INFO = 1
Constant Long SQL_NO_DATA				= 100
Constant Long SQL_ERROR					= -1
Constant Long SQL_INVALID_HANDLE		= -2
Constant Long SQL_NEED_DATA			= 99

// other values
Constant Integer SQL_NTS				= -3
Constant Long SQL_NULL_HANDLE			= 0
Constant Integer SQL_MAX_DSN_LENGTH = 32
Constant Long SQL_ATTR_ODBC_VERSION = 200
Constant ULong SQL_OV_ODBC3			= 3

// SQLAllocHandle constants
Constant Integer SQL_HANDLE_ENV	= 1
Constant Integer SQL_HANDLE_DBC	= 2
Constant Integer SQL_HANDLE_STMT	= 3
Constant Integer SQL_HANDLE_DESC	= 4

// SQLTables column numbers
constant UInt SQLTAB_TABLE_CAT	= 1
Constant UInt SQLTAB_TABLE_SCHEM	= 2
Constant UInt SQLTAB_TABLE_NAME	= 3
Constant UInt SQLTAB_TABLE_TYPE	= 4
Constant UInt SQLTAB_REMARKS		= 5

// SQLColumns column numbers
constant UInt SQLCOL_TABLE_CAT			= 1
Constant UInt SQLCOL_TABLE_SCHEM			= 2
Constant UInt SQLCOL_TABLE_NAME			= 3
Constant UInt SQLCOL_COLUMN_NAME			= 4
Constant UInt SQLCOL_DATA_TYPE			= 5
Constant UInt SQLCOL_TYPE_NAME			= 6
Constant UInt SQLCOL_COLUMN_SIZE			= 7
Constant UInt SQLCOL_BUFFER_LENGTH		= 8
Constant UInt SQLCOL_DECIMAL_DIGITS		= 9
Constant UInt SQLCOL_NUM_PREC_RADIX		= 10
Constant UInt SQLCOL_NULLABLE				= 11
Constant UInt SQLCOL_REMARKS				= 12
Constant UInt SQLCOL_COLUMN_DEF			= 13
Constant UInt SQLCOL_SQL_DATA_TYPE		= 14
Constant UInt SQLCOL_SQL_DATETIME_SUB	= 15
Constant UInt SQLCOL_CHAR_OCTET_LENGTH = 16
Constant UInt SQLCOL_ORDINAL_POSITION	= 17
Constant UInt SQLCOL_IS_NULLABLE			= 18

// SQLPrimaryKeys column numbers
Constant UInt SQLPK_TABLE_CAT		= 1
Constant UInt SQLPK_TABLE_SCHEM	= 2
Constant UInt SQLPK_TABLE_NAME	= 3
Constant UInt SQLPK_COLUMN_NAME	= 4
Constant UInt SQLPK_KEY_SEQ		= 5
Constant UInt SQLPK_PK_NAME		= 6

// SQLForeignKeys column numbers
Constant UInt SQLFK_PKTABLE_CAT			= 1
Constant UInt SQLFK_PKTABLE_SCHEM		= 2
Constant UInt SQLFK_PKTABLE_NAME			= 3
Constant UInt SQLFK_PKCOLUMN_NAME		= 4
Constant UInt SQLFK_FKTABLE_CAT			= 5
Constant UInt SQLFK_FKTABLE_SCHEM		= 6
Constant UInt SQLFK_FKTABLE_NAME			= 7
Constant UInt SQLFK_FKCOLUMN_NAME		= 8
Constant UInt SQLFK_KEY_SEQ				= 9
Constant UInt SQLFK_UPDATE_RULE			= 10
Constant UInt SQLFK_DELETE_RULE			= 11
Constant UInt SQLFK_FK_NAME				= 12
Constant UInt SQLFK_PK_NAME				= 13
Constant UInt SQLFK_DEFERRABILITY		= 14

// SQLProcedures column numbers
Constant UInt SQLSP_PROCEDURE_CAT	= 1
Constant UInt SQLSP_PROCEDURE_SCHEM	= 2
Constant UInt SQLSP_PROCEDURE_NAME	= 3
Constant UInt SQLSP_REMARKS			= 7
Constant UInt SQLSP_PROCEDURE_TYPE	= 8

// SQL data type codes
Constant Long SQL_CHAR			= 1
Constant Long SQL_NUMERIC		= 2
Constant Long SQL_DECIMAL		= 3
Constant Long SQL_INTEGER		= 4
Constant Long SQL_SMALLINT		= 5
Constant Long SQL_FLOAT			= 6
Constant Long SQL_REAL			= 7
Constant Long SQL_DOUBLE		= 8
Constant Long SQL_DATETIME		= 9
Constant Long SQL_VARCHAR		= 12
Constant Long SQL_NVARCHAR		= 247
Constant Long SQL_TEXT			= -1
Constant Long SQL_BINARY		= -2
Constant Long SQL_VARBINARY	= -3
Constant Long SQL_IMAGE			= -4
Constant Long SQL_TINYINT		= -6
Constant Long SQL_BIT			= -7
Constant Long SQL_WCHAR			= -8
Constant Long SQL_WVARCHAR		= -9
Long SQL_CHARACTER = SQL_WCHAR

// DateTime sub-types
Constant Long SQL_CODE_DATE		= 1
Constant Long SQL_CODE_TIME		= 2
Constant Long SQL_CODE_TIMESTAMP	= 3

// FetchOrientation
Constant UInt SQL_FETCH_NEXT		= 1
Constant UInt SQL_FETCH_FIRST		= 2
Constant UInt SQL_FETCH_LAST		= 3
Constant UInt SQL_FETCH_PRIOR		= 4
Constant UInt SQL_FETCH_ABSOLUTE	= 5
Constant UInt SQL_FETCH_RELATIVE	= 6

// FetchOrientation for SQLDataSources only
Constant UInt SQL_FETCH_FIRST_USER		= 31
Constant UInt SQL_FETCH_FIRST_SYSTEM	= 32

// SQL Server
Constant Integer DEFAULT_RESULT_SIZE = 1024
Constant Integer SQL_COPT_SS_BASE_EX = 1240
Constant Integer SQL_COPT_SS_BROWSE_CONNECT = SQL_COPT_SS_BASE_EX + 1
Constant Integer SQL_COPT_SS_BROWSE_SERVER  = SQL_COPT_SS_BASE_EX + 2
Constant Integer SQL_MORE_INFO_NO = 0
Constant Integer SQL_MORE_INFO_YES = 1
Constant Integer SQL_ATTR_LOGIN_TIMEOUT = 103

//Transaction
Transaction itran_conn
end variables

forward prototypes
public function integer of_columns (string as_schema, string as_tablename, ref s_columns astr_columns[])
public function integer of_tables (string as_tabletype, ref s_tables astr_table[])
public function integer of_sprocs (ref s_sprocs astr_sprocs[])
public function integer of_sprocsource (string as_schema, string as_sprocname, ref string as_source)
public function string of_replaceall (string as_oldstring, string as_findstr, string as_replace)
public function integer of_datasources (string as_type, ref string as_name[], ref string as_driver[])
public function integer of_primarykeys (string as_schema, string as_tablename, ref s_primarykeys astr_pkeys[])
public function integer of_foreignkeys (string as_schema, string as_tablename, ref s_foreignkeys astr_fkeys[])
public function integer of_sqlerror (string as_function, integer ai_handletype, long al_handle)
public subroutine of_sqlwarning (string as_function, integer ai_handletype, long al_handle)
public function integer of_parse (string as_text, string as_sep, ref string as_array[])
public function string of_pbodbini ()
public subroutine of_settransaction (transaction atran)
public function boolean of_isvalid ()
end prototypes

public function integer of_columns (string as_schema, string as_tablename, ref s_columns astr_columns[]);//====================================================================
// Function: n_odbcapi.of_columns()
//--------------------------------------------------------------------
// Description: get list of columns
//--------------------------------------------------------------------
// Arguments:
// 	value    	string   	as_schema     	
// 	value    	string   	as_tablename  	
// 	reference	s_columns	astr_columns[]	
//--------------------------------------------------------------------
// Returns:  integer 
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_columns ( string as_schema, string as_tablename, ref s_columns astr_columns[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

ULong ll_handle
Long ll_return, ll_position, ll_width, ll_coldecimal
Integer li_count, li_strlen, li_coltype
String ls_catalog, ls_schema, ls_colname, ls_datatype
String ls_nullable, ls_default

// null out the search vars
SetNull(ls_catalog)
SetNull(ls_colname)
If as_schema = "" Then
	SetNull(as_schema)
End If

If Not of_isvalid() Then
	MessageBox( "Warning", "Transaction Not Connect", Information!)
	Return -1
End If

// allocate a statement handle
ll_return = SQLAllocHandle(SQL_HANDLE_STMT, itran_conn.DBHandle(), ll_handle)
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_Columns", SQL_HANDLE_STMT, ll_handle)
End If

// get a list of columns
ll_return = SQLColumns(ll_handle, ls_catalog, 0, as_schema, Len(as_schema), as_tablename, Len(as_tablename), ls_colname, 0)
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_Columns", SQL_HANDLE_STMT, ll_handle)
End If

// bind local variables to result set columns
SQLBindCol(	ll_handle, SQLCOL_ORDINAL_POSITION, SQL_INTEGER, ll_position, 0, li_strlen)
ls_colname = Space(128)
SQLBindCol(	ll_handle, SQLCOL_COLUMN_NAME,	SQL_CHARACTER, ls_colname, Len(ls_colname), li_strlen)
SQLBindCol(	ll_handle, SQLCOL_DATA_TYPE, SQL_SMALLINT, li_coltype, 0, li_strlen)
SQLBindCol(	ll_handle, SQLCOL_COLUMN_SIZE, SQL_INTEGER, ll_width, 0, li_strlen)
SQLBindCol(	ll_handle, SQLCOL_DECIMAL_DIGITS, SQL_INTEGER, ll_coldecimal, 0, li_strlen)
ls_datatype = Space(128)
SQLBindCol(	ll_handle, SQLCOL_TYPE_NAME, SQL_CHARACTER, ls_datatype, Len(ls_datatype), li_strlen)
ls_nullable = Space(128)
SQLBindCol(	ll_handle, SQLCOL_IS_NULLABLE, 	SQL_CHARACTER, ls_nullable, Len(ls_nullable), li_strlen)
ls_default = Space(128)
SQLBindCol(	ll_handle, SQLCOL_COLUMN_DEF, SQL_CHARACTER, ls_default, Len(ls_default), li_strlen)

// fetch the first row
ll_return = SQLFetch(ll_handle)
Do While ll_return = SQL_SUCCESS
	li_count += 1
	astr_columns[li_count].Position = ll_position
	astr_columns[li_count].Name = Trim(ls_colname)
	astr_columns[li_count].DataType = Trim(ls_datatype)
	Choose Case li_coltype
		Case SQL_DECIMAL, SQL_NUMERIC, SQL_FLOAT
			astr_columns[li_count].Width = ll_width
			astr_columns[li_count].Decimal = ll_coldecimal
		Case SQL_CHAR, SQL_VARCHAR, SQL_WCHAR, SQL_WVARCHAR, SQL_NVARCHAR, SQL_BINARY, SQL_VARBINARY
		astr_columns[li_count].Width = ll_width
End Choose
If Upper(ls_nullable) = "YES" Then
	astr_columns[li_count].Nullable = True
End If
astr_columns[li_count].Default = Trim(ls_default)
// fetch the next row
ll_return = SQLFetch(ll_handle)
Loop

// release the statement handle
SQLFreeHandle(SQL_HANDLE_STMT, ll_handle)

Return li_count


end function

public function integer of_tables (string as_tabletype, ref s_tables astr_table[]);//====================================================================
// Function: n_odbcapi.of_tables()
//--------------------------------------------------------------------
// Description: get list of tables
//--------------------------------------------------------------------
// Arguments:
// 	value    	string  	as_tabletype	
// 	reference	s_tables	astr_table[]	
//--------------------------------------------------------------------
// Returns:  integer
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_tables ( string as_tabletype, ref s_tables astr_table[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================


ULong ll_handle
Integer li_count, li_strlen
Long ll_return
String ls_catalog, ls_schema, ls_tabname, ls_tabtype

// null out the search vars
SetNull(ls_catalog)
SetNull(ls_schema)
SetNull(ls_tabname)

If Not of_isvalid() Then
	MessageBox( "Warning", "Transaction Not Connect", Information!)
	Return -1
End If

// allocate a statement handle
ll_return = SQLAllocHandle(SQL_HANDLE_STMT, itran_conn.DBHandle(), ll_handle)
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_Tables", SQL_HANDLE_STMT, ll_handle)
End If

// get a list of tables
ll_return = SQLTables(ll_handle, ls_catalog, 0, ls_schema, 0, ls_tabname, 0, as_tabletype, Len(as_tabletype))
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_Tables", SQL_HANDLE_STMT, ll_handle)
End If

// bind local variables to result set columns
ls_schema = Space(128)
SQLBindCol(	ll_handle, SQLTAB_TABLE_SCHEM, SQL_CHARACTER, ls_schema, Len(ls_schema), li_strlen)
ls_tabname = Space(128)
SQLBindCol(	ll_handle, SQLTAB_TABLE_NAME, SQL_CHARACTER, ls_tabname, Len(ls_tabname), li_strlen)
ls_tabtype = Space(128)
SQLBindCol(	ll_handle, SQLTAB_TABLE_TYPE, SQL_CHARACTER, ls_tabtype, Len(ls_tabtype), li_strlen)

// fetch the first row
ll_return = SQLFetch(ll_handle)
Do While ll_return = SQL_SUCCESS
	li_count += 1
	astr_table[li_count].Schema    = Trim(ls_schema)
	astr_table[li_count].Name      = Trim(ls_tabname)
	astr_table[li_count].TableType = Trim(ls_tabtype)
	// fetch the next row
	ll_return = SQLFetch(ll_handle)
Loop

// release the statement handle
SQLFreeHandle(SQL_HANDLE_STMT, ll_handle)

Return li_count


end function

public function integer of_sprocs (ref s_sprocs astr_sprocs[]);//====================================================================
// Function: n_odbcapi.of_sprocs()
//--------------------------------------------------------------------
// Description: get list of stored procedures
//--------------------------------------------------------------------
// Arguments:
// 	reference	s_sprocs	astr_sprocs[]	
//--------------------------------------------------------------------
// Returns:  integer
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_sprocs ( ref s_sprocs astr_sprocs[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

ULong ll_handle
Integer li_count, li_strlen
Long ll_return
String ls_catalog, ls_schema, ls_sprocname

// null out the search vars
SetNull(ls_catalog)
SetNull(ls_schema)
SetNull(ls_sprocname)

If Not of_isvalid() Then
	MessageBox( "Warning", "Transaction Not Connect", Information!)
	Return -1
End If

// allocate a statement handle
ll_return = SQLAllocHandle(SQL_HANDLE_STMT, itran_conn.DBHandle(), ll_handle)
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_Sprocs", SQL_HANDLE_STMT, ll_handle)
End If

// get a list of procedures
ll_return = SQLProcedures(ll_handle, ls_catalog, 0, ls_schema, 0, ls_sprocname, 0)
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_Sprocs", SQL_HANDLE_STMT, ll_handle)
End If

// bind local variables to result set columns
ls_schema = Space(128)
SQLBindCol(	ll_handle, SQLSP_PROCEDURE_SCHEM, 	SQL_CHARACTER, ls_schema, Len(ls_schema), li_strlen)
ls_sprocname = Space(128)
SQLBindCol(	ll_handle, SQLSP_PROCEDURE_NAME, SQL_CHARACTER, ls_sprocname, Len(ls_sprocname), li_strlen)

// fetch the first row
ll_return = SQLFetch(ll_handle)
Do While ll_return = SQL_SUCCESS
	li_count += 1
	astr_sprocs[li_count].Schema = ls_schema
	If Pos(ls_sprocname, ";") = 0 Then
		astr_sprocs[li_count].Name = ls_sprocname
	Else
		astr_sprocs[li_count].Name = Left(ls_sprocname, Pos(ls_sprocname, ";") - 1)
	End If
	// fetch the next row
	ll_return = SQLFetch(ll_handle)
Loop

// release the statement handle
SQLFreeHandle(SQL_HANDLE_STMT, ll_handle)

Return li_count

end function

public function integer of_sprocsource (string as_schema, string as_sprocname, ref string as_source);//====================================================================
// Function: n_odbcapi.of_sprocsource()
//--------------------------------------------------------------------
// Description: get stored procedure source
//--------------------------------------------------------------------
// Arguments:
// 	value    	string	as_schema   	
// 	value    	string	as_sprocname	
// 	reference	string	as_source   	
//--------------------------------------------------------------------
// Returns:  integer
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_sprocsource ( string as_schema, string as_sprocname, ref string as_source )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Constant Integer SQL_DBMS_NAME = 17
Integer li_strlen
Long ll_return
String ls_dbms, ls_spsource, ls_procsql
ULong ll_handle

ls_dbms = Space(128)

If Not of_isvalid() Then
	MessageBox( "Warning", "Transaction Not Connect", Information!)
	Return -1
End If


// get dbms name
SQLGetInfo(itran_conn.DBHandle(), SQL_DBMS_NAME, ls_dbms, 128, li_strlen)

// get stored procedure select syntax
ls_spsource = ProfileString(of_pbodbini(), ls_dbms, "PBSyntax", "")
ls_procsql  = ProfileString(of_pbodbini(), ls_spsource, "PBSelectProcSyntax", "")
If ls_procsql = "" Then
	MessageBox("SQL Warning", 	"PBSelectProcSyntax not found in pbodb80.ini!")
	Return -1
End If

// replace syntax arguments with values
ls_procsql = of_ReplaceAll(ls_procsql, "&ObjectOwner", as_schema)
ls_procsql = of_ReplaceAll(ls_procsql, "&ObjectName", as_sprocname)
ls_procsql = of_ReplaceAll(ls_procsql, "&ObjectNumber", "1")
ls_procsql = of_ReplaceAll(ls_procsql, "''", "'")

// allocate a statement handle
ll_return = SQLAllocHandle(SQL_HANDLE_STMT, itran_conn.DBHandle(), ll_handle)
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_SprocSource", SQL_HANDLE_STMT, ll_handle)
End If

// execute the sql statement
ll_return = SQLExecDirect(ll_handle, ls_procsql, Len(ls_procsql))
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_SprocSource", SQL_HANDLE_STMT, ll_handle)
End If

// bind local variables to result set columns
ls_spsource = Space(32768)
SQLBindCol(ll_handle, 1, SQL_CHARACTER, ls_spsource, Len(ls_spsource), li_strlen)

// fetch the first row
ll_return = SQLFetch(ll_handle)
Do While ll_return = SQL_SUCCESS
	// replace LF with CRLF
	ls_spsource = of_ReplaceAll(ls_spsource, "~n", "~r~n")
	// add data to output variable
	as_source += ls_spsource
	// fetch the next row
	ls_spsource = Space(32768)
	ll_return = SQLFetch(ll_handle)
Loop

// release the statement handle
SQLFreeHandle(SQL_HANDLE_STMT, ll_handle)

Return 1


end function

public function string of_replaceall (string as_oldstring, string as_findstr, string as_replace);//====================================================================
// Function: n_odbcapi.of_replaceall()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_oldstring	
// 	value	string	as_findstr  	
// 	value	string	as_replace  	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_replaceall ( string as_oldstring, string as_findstr, string as_replace )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_newstring
Long ll_findstr, ll_replace, ll_pos

// get length of strings
ll_findstr = Len(as_findstr)
ll_replace = Len(as_replace)

// find first occurrence
ls_newstring = as_oldstring
ll_pos = Pos(ls_newstring, as_findstr)

Do While ll_pos > 0
	// replace old with new
	ls_newstring = Replace(ls_newstring, ll_pos, ll_findstr, as_replace)
	// find next occurrence
	ll_pos = Pos(ls_newstring, as_findstr, (ll_pos + ll_replace))
Loop

Return ls_newstring

end function

public function integer of_datasources (string as_type, ref string as_name[], ref string as_driver[]);//====================================================================
// Function: n_odbcapi.of_datasources()
//--------------------------------------------------------------------
// Description: get a list of datasources
//--------------------------------------------------------------------
// Arguments:
// 	value    	string	as_type    	
// 	reference	string	as_name[]  	
// 	reference	string	as_driver[]	
//--------------------------------------------------------------------
// Returns:  integer
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_datasources ( string as_type, ref string as_name[], ref string as_driver[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================


ULong ll_handle
Integer li_direction, li_count, li_svrlen, li_deslen
Long ll_return
String ls_name, ls_driver

// set the type direction
Choose Case Upper(as_type)
	Case "SYSTEM"
		li_direction = SQL_FETCH_FIRST_SYSTEM
	Case "USER"
		li_direction = SQL_FETCH_FIRST_USER
	Case Else
		li_direction = SQL_FETCH_FIRST
End Choose

// allocate an environment handle
ll_return = SQLAllocHandle(SQL_HANDLE_ENV, SQL_NULL_HANDLE, ll_handle)
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_DataSources", SQL_HANDLE_ENV, ll_handle)
End If

// set the ODBC version
ll_return = SQLSetEnvAttr(ll_handle, SQL_ATTR_ODBC_VERSION, SQL_OV_ODBC3, 0);
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_DataSources", SQL_HANDLE_ENV, ll_handle)
End If

ls_name = Space(SQL_MAX_DSN_LENGTH)
ls_driver = Space(256)

// get the datasources
Do While SQLDataSources(ll_handle, li_direction, ls_name, SQL_MAX_DSN_LENGTH, li_svrlen, 	ls_driver, Len(ls_driver), li_deslen) = SQL_SUCCESS
	li_count += 1
	as_name[li_count] = ls_name
	as_driver[li_count] = ls_driver
	ls_name = Space(SQL_MAX_DSN_LENGTH)
	ls_driver = Space(256)
	li_direction = SQL_FETCH_NEXT
Loop

If ll_return = SQL_ERROR Then
	Return of_SQLError("of_DataSources", SQL_HANDLE_ENV, ll_handle)
End If

// release the statement handle
SQLFreeHandle(SQL_HANDLE_ENV, ll_handle)

Return li_count


end function

public function integer of_primarykeys (string as_schema, string as_tablename, ref s_primarykeys astr_pkeys[]);//====================================================================
// Function: n_odbcapi.of_primarykeys()
//--------------------------------------------------------------------
// Description: get list of primary keys
//--------------------------------------------------------------------
// Arguments:
// 	value    	string       	as_schema   	
// 	value    	string       	as_tablename	
// 	reference	s_primarykeys	astr_pkeys[]	
//--------------------------------------------------------------------
// Returns:  integer
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_primarykeys ( string as_schema, string as_tablename, ref s_primarykeys astr_pkeys[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================


ULong ll_handle
Integer li_count, li_strlen, li_colseq
Long ll_return
String ls_catalog, ls_schema, ls_colname, ls_pkname

// null out the search vars
SetNull(ls_catalog)
If as_schema = "" Then
	SetNull(as_schema)
End If

If Not of_isvalid() Then
	MessageBox( "Warning", "Transaction Not Connect", Information!)
	Return -1
End If

// allocate a statement handle
ll_return = SQLAllocHandle(SQL_HANDLE_STMT, itran_conn.DBHandle(), ll_handle)
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_PrimaryKeys", SQL_HANDLE_STMT, ll_handle)
End If

// get a list of primary key columns
ll_return = SQLPrimaryKeys(ll_handle, ls_catalog, 0, as_schema, Len(as_schema), as_tablename, Len(as_tablename))
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_PrimaryKeys", SQL_HANDLE_STMT, ll_handle)
End If

// bind local variables to result set columns
SQLBindCol(	ll_handle, SQLPK_KEY_SEQ, 	SQL_SMALLINT, li_colseq, 0, li_strlen)
ls_colname = Space(128)
SQLBindCol(	ll_handle, SQLPK_COLUMN_NAME, SQL_CHARACTER, ls_colname, Len(ls_colname), li_strlen)
ls_pkname = Space(128)
SQLBindCol(	ll_handle, SQLPK_PK_NAME, SQL_CHARACTER, ls_pkname, Len(ls_pkname), li_strlen)

// fetch the first row
ll_return = SQLFetch(ll_handle)
Do While ll_return = SQL_SUCCESS
	li_count += 1
	astr_pkeys[li_count].ColSeq  = li_colseq
	astr_pkeys[li_count].Colname = Trim(ls_colname)
	astr_pkeys[li_count].PKName  = Trim(ls_pkname)
	// fetch the next row
	ll_return = SQLFetch(ll_handle)
Loop

// release the statement handle
SQLFreeHandle(SQL_HANDLE_STMT, ll_handle)

Return li_count


end function

public function integer of_foreignkeys (string as_schema, string as_tablename, ref s_foreignkeys astr_fkeys[]);//====================================================================
// Function: n_odbcapi.of_foreignkeys()
//--------------------------------------------------------------------
// Description: get list of foreign keys
//--------------------------------------------------------------------
// Arguments:
// 	value    	string       	as_schema   	
// 	value    	string       	as_tablename	
// 	reference	s_foreignkeys	astr_fkeys[]	
//--------------------------------------------------------------------
// Returns:  integer
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_foreignkeys ( string as_schema, string as_tablename, ref s_foreignkeys astr_fkeys[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================


ulong ll_handle
Integer li_count, li_strlen, li_colseq
Long ll_return
String ls_null, ls_fkname, ls_fkcolumn, ls_pkschema, ls_pktable, ls_pkcolumn

SetNull(ls_null)
If as_schema = "" Then
	SetNull(as_schema)
End If

If Not of_isvalid() Then
	MessageBox( "Warning", "Transaction Not Connect", Information!)
	Return -1
End If

// allocate a statement handle
ll_return = SQLAllocHandle(SQL_HANDLE_STMT, itran_conn.DbHandle(), ll_handle)
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_ForeignKeys", SQL_HANDLE_STMT, ll_handle)
End If

// get a list of foreign key columns
ll_return = SQLForeignKeys(ll_handle, ls_null, 0, ls_null, 0, ls_null, 0, 	ls_null, 0, as_schema, Len(as_schema), as_tablename, Len(as_tablename)) 
If ll_return = SQL_ERROR Then
	Return of_SQLError("of_ForeignKeys", SQL_HANDLE_STMT, ll_handle)
End If

// bind local variables to result set columns
SQLBindCol(	ll_handle, SQLFK_KEY_SEQ, SQL_SMALLINT, li_colseq, 0, li_strlen)
ls_fkname = Space(128)
SQLBindCol(	ll_handle, SQLFK_FK_NAME, 	SQL_CHARACTER, ls_fkname, Len(ls_fkname), li_strlen)
ls_fkcolumn = Space(128)
SQLBindCol(	ll_handle, SQLFK_FKCOLUMN_NAME, 	SQL_CHARACTER, ls_fkcolumn, Len(ls_fkcolumn), li_strlen)
ls_pkschema = Space(128)
SQLBindCol(	ll_handle, SQLFK_PKTABLE_SCHEM, SQL_CHARACTER, ls_pkschema, Len(ls_pkschema), li_strlen)
ls_pktable = Space(128)
SQLBindCol(	ll_handle, SQLFK_PKTABLE_NAME, SQL_CHARACTER, ls_pktable, Len(ls_pktable), li_strlen)
ls_pkcolumn = Space(128)
SQLBindCol(	ll_handle, SQLFK_PKCOLUMN_NAME, SQL_CHARACTER, ls_pkcolumn, Len(ls_pkcolumn), li_strlen)

// fetch the first row
ll_return = SQLFetch(ll_handle)
Do While ll_return = SQL_SUCCESS
	li_count += 1
	astr_fkeys[li_count].colseq   = li_colseq
	astr_fkeys[li_count].fkname   = Trim(ls_fkname)
	astr_fkeys[li_count].fkcolumn = Trim(ls_fkcolumn)
	astr_fkeys[li_count].pkschema = Trim(ls_pkschema)
	astr_fkeys[li_count].pktable  = Trim(ls_pktable)
	astr_fkeys[li_count].pkcolumn = Trim(ls_pkcolumn)
	// fetch the next row
	ll_return = SQLFetch(ll_handle)
LOOP 

// release the statement handle
SQLFreeHandle(SQL_HANDLE_STMT, ll_handle)

Return li_count

end function

public function integer of_sqlerror (string as_function, integer ai_handletype, long al_handle);//====================================================================
// Function: n_odbcapi.of_sqlerror()
//--------------------------------------------------------------------
// Description: display sql error message
//--------------------------------------------------------------------
// Arguments:
// 	value	string 	as_function  	
// 	value	integer	ai_handletype	
// 	value	long   	al_handle    	
//--------------------------------------------------------------------
// Returns:  integer
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_sqlerror ( string as_function, integer ai_handletype, long al_handle )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_sqlstate, ls_errtext, ls_title
Integer li_textlen
Long ll_return, ll_errcode

ls_sqlstate = Space(5)
ls_errtext = Space(128)

ll_return = SQLGetDiagRec(ai_handletype, al_handle, 1, ls_sqlstate, ll_errcode, ls_errtext, 128, li_textlen)
If ll_errcode = 0 Then
	ls_title = as_function + " SQL Error"
Else
	ls_title = as_function + " SQL Error #" + String(ll_errcode)
End If

MessageBox( ls_title, "SQLSTATE = " + 	ls_sqlstate + "~r~n" + ls_errtext, StopSign!)

// release the statement handle
SQLFreeHandle(SQL_HANDLE_STMT, al_handle)

Return -1


end function

public subroutine of_sqlwarning (string as_function, integer ai_handletype, long al_handle);//====================================================================
// Function: n_odbcapi.of_sqlwarning()
//--------------------------------------------------------------------
// Description: display sql warning message
//--------------------------------------------------------------------
// Arguments:
// 	value	string 	as_function  	
// 	value	integer	ai_handletype	
// 	value	long   	al_handle    	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_sqlwarning ( string as_function, integer ai_handletype, long al_handle )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_sqlstate, ls_errtext, ls_title
Integer li_textlen
Long ll_return, ll_errcode

ls_sqlstate = Space(5)
ls_errtext = Space(128)

ll_return = SQLGetDiagRec(ai_handletype, al_handle, 1, ls_sqlstate, ll_errcode, ls_errtext, 128, li_textlen)
If ll_errcode = 0 Then
	ls_title = as_function + " SQL Error"
Else
	ls_title = as_function + " SQL Error #" + String(ll_errcode)
End If

MessageBox( ls_title, "SQLSTATE = " + 		ls_sqlstate + "~r~n" + ls_errtext, Information!)


end subroutine

public function integer of_parse (string as_text, string as_sep, ref string as_array[]);//====================================================================
// Function: n_odbcapi.of_parse()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value    	string	as_text   	
// 	value    	string	as_sep    	
// 	reference	string	as_array[]	
//--------------------------------------------------------------------
// Returns:  integer
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_parse ( string as_text, string as_sep, ref string as_array[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_empty[], ls_work
Long ll_pos, ll_each

as_array = ls_empty

If IsNull(as_text) Or as_text = "" Then Return 0

ll_pos = Pos(as_text, as_sep)
Do While ll_pos > 0
	ls_work = Trim(Left(as_text, ll_pos - 1))
	as_text = Trim(Mid(as_text, ll_pos + 1))
	as_array[UpperBound(as_array) + 1] = ls_work
	ll_pos = Pos(as_text, as_sep)
Loop
as_array[UpperBound(as_array) + 1] = Trim(as_text)

Return UpperBound(as_array)


end function

public function string of_pbodbini ();//====================================================================
// Function: n_odbcapi.of_pbodbini()
//--------------------------------------------------------------------
// Description: return name of the pbodb###.ini file
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/09/07
//--------------------------------------------------------------------
// Usage: n_odbcapi.of_pbodbini ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Environment le_env
String ls_vmname

GetEnvironment(le_env)

choose case le_env.PBMajorRevision
	case 10, 11, 12
		choose case le_env.PBMinorRevision
			case 5
				ls_vmname = "pbodb" + String(le_env.PBMajorRevision) + "5.ini"
			case 6
				ls_vmname = "pbodb" + String(le_env.PBMajorRevision) + "6.ini"
			case else
				ls_vmname = "pbodb" + String(le_env.PBMajorRevision) + "0.ini"
		end choose
	case else
		ls_vmname = "pbodb" + String(le_env.PBMajorRevision) + "0.ini"
end choose

Return ls_vmname

end function

public subroutine of_settransaction (transaction atran);If of_isvalid() Then
	Disconnect Using itran_conn;
End If
itran_conn = atran
end subroutine

public function boolean of_isvalid ();If IsNull(itran_conn) Or Not IsValid(itran_conn) Or IsNull( itran_conn.DBHandle() ) Then
	Return False
End If
Return True
end function

on n_odbcapi.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_odbcapi.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;itran_conn = Create Transaction

end event

event destructor;If of_isvalid() Then
	Disconnect Using itran_conn;
End If
If Not IsNull(itran_conn) Then
	Destroy itran_conn
End If


end event

