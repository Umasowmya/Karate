function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    accessToken:'83b75e918c4dd472ee104061b9c29d1d6fa41988',
    baseUrl: 'https://api.todoist.com/rest/v1/',
    projectId:2294809077,
    sectionId:94717339,
    taskId:6005261206,
    commentId:3101562019,
    labelId:6005261206

  }

  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}
