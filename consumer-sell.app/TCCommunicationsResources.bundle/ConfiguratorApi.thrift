namespace cocoa TCThriftConsumerApp_
namespace java com.truecar.mobile.thrift

/**
 *	A vehicle whose make, year, model and trim information is grouped into a partner preferred vehicle class
 */
struct PartnerPreferredVehicle {

    /**
	 *	Make ID.
	 *
	 *	TrueCar / Zag ID.
	 */
	1: optional i64 makeId,
	
	/**
	 *	Make name.
	 */
	2: optional string makeName,
	
	/**
	 *	Model ID.
	 *
	 *	TrueCar / Zag ID.
	 */
	3: optional i64 modelId,
	
	/**
	 *	Model name.
	 */
	4: optional string modelName,
	
	/**
	 *	Model year.
	 */
	5: optional i32 modelYear,

	/**
	 *	Flag that signifies the vehicle is the best value in its class.
	 */
    6: optional bool isBestValue,
}

/**
 *	A preferred vehicle class consisting of a name and a list of partner preferred vehicles
 */
struct PartnerPreferredVehicleClass
{
	/**
	 *	Name.
	 */
    1: required string name,

	/**
	 *	A list of preferred vehicles.
	 */
    2: required list<PartnerPreferredVehicle> vehicles,
}

/**
 *	Response for GetPartnerPreferredVehicleClasses API Endpoint.
 *
 *	This API endpoint is used to retrieve all partner preferred vehicle classes. This API endpoint is called by the Mdk for use by certain partners who support preferred vehicle class selection.
 *
 *	URL:
 *	<pre>
 *		{baseUrl}/configurator/partner-preferred-vehicles/vehicle-classes/pag/{pag}
 *	</pre>
 *
 *	Request:
 *	<pre>
 *		GET {basePath}/configurator/partner-preferred-vehicles/vehicle-classes/pag/{pag} HTTP/1.1
 *		Host: {host}
 *		Accept: application/x-thrift
 *		X-TrueCar-Token: {secureToken}
 *	</pre>
 *
 *	Response (success):
 *	<pre>
 *		HTTP/1.1 200 OK
 *		Content-Type: application/x-thrift
 *		Content-Length: {length}
 *
 *		{GetPartnerPreferredVehicleClassesResponse}
 *	</pre>
 *
 *	Response (error):
 *	<pre>
 *		HTTP/1.1 {non200Status}
 *		Content-Type: application/x-thrift
 *		Content-Length: {length}
 *
 *		{Exception}
 *	</pre>
 *
 *	Potential Error Codes:
 *	<ul>
 *		<li>TOKEN_INVALID</li>
 *		<li>TOKEN_EXPIRED</li>
 *		<li>USER_HANDLE_INVALID</li>
 *		<li>USER_NOT_FOUND</li>
 *	</ul>
 *
 *	<h2>Business Rules and Context</h2>
 *		<h3>Consumers</h3>
 *		<ul>
 *			<li>Consumer Mobile Apps</li>
 *		</ul>
 *
 *	<h2>Implementation Notes:</h2>
 *		<h3>MSP:</h3>
 *
 *		<h3>Apps:</h3>
 *		This is the API used to fetch lists of partner preferred vehicle classes.
 */
struct GetPartnerPreferredVehicleClassesResponse
{
	/**
	 *	All partner preferred vehicle classes
	 */
	1: required list<PartnerPreferredVehicleClass> vehicleClasses,
}


