.class Lcom/urbanairship/analytics/AppForegroundEvent;
.super Lcom/urbanairship/analytics/Event;


# static fields
.field static final TYPE:Ljava/lang/String; = "app_foreground"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/analytics/DefaultEnvironment;

    invoke-direct {v0}, Lcom/urbanairship/analytics/DefaultEnvironment;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/AppForegroundEvent;-><init>(Lcom/urbanairship/analytics/Environment;)V

    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/analytics/Environment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/Event;-><init>(Lcom/urbanairship/analytics/Environment;)V

    return-void
.end method


# virtual methods
.method getData()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/urbanairship/analytics/AppForegroundEvent;->getEnvironment()Lcom/urbanairship/analytics/Environment;

    move-result-object v1

    :try_start_0
    const-string v2, "connection_type"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getConnectionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getConnectionSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "connection_subtype"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "carrier"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "time_zone"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getTimezone()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "daylight_savings"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->isDaylightSavingsTime()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "notification_types"

    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getNotificationTypes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os_version"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lib_version"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getLibVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "package_version"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getPackageVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "session_id"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "push_id"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getConversionPushId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "push_enabled"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->isPushEnabled()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error constructing JSON data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/analytics/AppForegroundEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getType()Ljava/lang/String;
    .locals 1

    const-string v0, "app_foreground"

    return-object v0
.end method
