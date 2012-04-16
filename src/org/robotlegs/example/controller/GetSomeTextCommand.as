package org.robotlegs.example.controller {
    import org.robotlegs.example.service.IExampleService;
    import org.robotlegs.example.view.events.GetSomeTextEvent;

	import robotlegs.bender.framework.logging.api.ILogger;

	public class GetSomeTextCommand {

        [Inject]
        public var event:GetSomeTextEvent;

        [Inject]
        public var service:IExampleService;

		[Inject]
		public var logger:ILogger;
        
        public function execute():void{
            logger.debug("3. Now we're in the command which will then tell the service to load data:::::::::")
            service.load();
        }
    }
}
