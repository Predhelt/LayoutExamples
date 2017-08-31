import QtQuick 2.6
import "functions.js" as Functions



CmdRespForm {
    id: crf
    signal cmdAdded(bool added)
    function addCmdLine(command) {
        responses.append(command)
        statusLE.text = command
        cmdAdded(true);
    }
}
