<?php

/**
 * Alerts Class containing alert dialogs
 */
class Dialogs
{
	/**
	 *	Function for creating success alerts
	 */
	public static function success($message)
	{
		return '
			<div class="card bg-success text-white shadow col-lg mb-4 alert" data-auto-dismiss role="alert">
				<div class="card-body">
					<button type = "button" class="close" data-dismiss="alert" aria-labe="close">
						<span aria-hidden="true">&times;</span>
					</button>
						<strong>Success: </strong>' . $message . '
				</div>
			</div>
        ';
	}

	/**
	 *	Function for creating error alerts
	 */
	public static function error($message)
	{
		return '
			<div class="card bg-danger text-white shadow col-lg mb-4 alert" data-auto-dismiss role="alert">
				<div class="card-body">
					<button type = "button" class="close" data-dismiss="alert" aria-labe="close">
						<span aria-hidden="true">&times;</span>
					</button>
						<strong>Error: </strong>' . $message . '
						
				</div>
			</div>
        ';
	}

	/**
	 *	Function for creating error alerts
	 */
	public static function warning($message)
	{
		return '
			<div class="card bg-warning text-white shadow col-lg mb-4 alert" data-auto-dismiss role="alert">
				<div class="card-body">
					<button type = "button" class="close" data-dismiss="alert" aria-labe="close">
						<span aria-hidden="true">&times;</span>
					</button>
						<strong>Warning: </strong>' . $message . '
						
				</div>
			</div>
        ';
	}

	/**
	 *	Function for creating error alerts
	 */
	public static function info($message)
	{
		return '
			<div class="card bg-warning text-info shadow col-lg mb-4 alert" data-auto-dismiss role="alert">
				<div class="card-body">
					<button type = "button" class="close" data-dismiss="alert" aria-labe="close">
						<span aria-hidden="true">&times;</span>
					</button>
						<strong>Warning: </strong>' . $message . '
						
				</div>
			</div>
        ';
	}
}
