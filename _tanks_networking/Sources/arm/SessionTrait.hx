package arm;

class SessionTrait extends iron.Trait {

    public static var session:kha.netsync.Session = null;

    public function new() {
        super();

        session = new kha.netsync.Session(2, "localhost", 6789);
        session.waitForStart(startSession, onSessionRefused, onSessionError, onSessionClosed, resetSession);
    }

    function startSession() {
        
    }

    function onSessionRefused() {
        
    }

    function onSessionError() {
        
    }

    function onSessionClosed() {
        
    }

    function resetSession() {
        
    }
}
