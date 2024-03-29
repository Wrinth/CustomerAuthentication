export const API_BASE_URL =
  process.env.NODE_ENV == 'production' || process.env.REACT_APP_DEV_REMOTE == 'remote'
    ? process.env.REACT_APP_BACKEND_SERVER + '/api/'
    : 'http://localhost:8080/api/';
export const DOWNLOAD_BASE_URL =
  process.env.NODE_ENV == 'production' || process.env.REACT_APP_DEV_REMOTE == 'remote'
    ? process.env.REACT_APP_BACKEND_SERVER + '/download/'
    : 'http://localhost:8080/download/';
export const ACCESS_TOKEN_NAME = 'x-auth-token';
