module.exports = {
    user : process.env.NODE_ORACLEDB_USER || "SYSTEM",
    
    password : process.env.NODE_ORACLEDB_PASSWORD || "niranjan2000",
    
    connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING ,
    
    externalAuth : process.env.NODE_ORACLEDB_EXTERNALAUTH ? true : false
    };