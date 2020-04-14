async function handler(event, context) {
  console.log(`environment:\n`, JSON.stringify(process.env, null, 2));
  console.log(`event:\n`, JSON.stringify(event, null, 2));

  return {
    message: 'Hello, world!'
  }
}

module.exports = {
  handler
}