module.exports = async function (context, req, inputDocument) {
    context.log('JavaScript HTTP trigger function processed a request.');

    if(!inputDocument) {
        let message = "TODO item " + req.query.id + " not found";
        context.log(message);

        context.res = {
            status: 404,
            body: message
        }
        context.bindings.outputQueueItem = message;
    } else {
        context.log("Found TODO item, Descrpition=" + inputDocument.desc);
        context.res = {
            body: inputDocument.desc
        }
    }
}