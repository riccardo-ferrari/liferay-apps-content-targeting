<#assign aui = PortletJspTagLibs["/META-INF/aui.tld"] />
<#assign liferay_ui = PortletJspTagLibs["/META-INF/liferay-ui.tld"] />

<#setting number_format="computer">

<#assign nowTime = now?time />

<div class="alert alert-info">
	<@liferay_ui["message"] arguments=nowTime?string.short key="this-rule-checks-the-server-time-which-currently-is-x" />
</div>

<@aui["fieldset"] cssClass="time-selector" label="start-time">
	<@liferay_ui["input-time"]
		amPmParam="startTimeAmPm"
		amPmValue=startTimeAmPm
		hourParam="startTimeHour"
		hourValue=startTimeHour
		minuteParam="startTimeMinute"
		minuteValue=startTimeMinute
		name="startTime"
	/>
</@>

<@aui["fieldset"] cssClass="time-selector" label="end-time">
	<@liferay_ui["input-time"]
		amPmParam="endTimeAmPm"
		amPmValue=endTimeAmPm
		hourParam="endTimeHour"
		hourValue=endTimeHour
		minuteParam="endTimeMinute"
		minuteValue=endTimeMinute
		name="endTime"
	/>
</@>

<style>
	 .time-selector legend {
		border: none;
		font-weight: bold;
		font-size: 15px;
		line-height: 30px;
		margin-bottom: 0;
	 }
</style>