.class Lcom/bugsnag/android/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private final batteryLevel:Ljava/lang/Float;

.field private final charging:Ljava/lang/Boolean;

.field private final freeDisk:Ljava/lang/Long;

.field private final freeMemory:Ljava/lang/Long;

.field private final locationStatus:Ljava/lang/String;

.field private final networkAccess:Ljava/lang/String;

.field private final orientation:Ljava/lang/String;

.field private final time:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/bugsnag/android/DeviceState;->getFreeMemory()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/DeviceState;->freeMemory:Ljava/lang/Long;

    .line 39
    invoke-static {p1}, Lcom/bugsnag/android/DeviceState;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/DeviceState;->orientation:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/bugsnag/android/DeviceState;->getBatteryLevel(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/DeviceState;->batteryLevel:Ljava/lang/Float;

    .line 41
    invoke-static {}, Lcom/bugsnag/android/DeviceState;->getFreeDisk()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/DeviceState;->freeDisk:Ljava/lang/Long;

    .line 42
    invoke-static {p1}, Lcom/bugsnag/android/DeviceState;->isCharging(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/DeviceState;->charging:Ljava/lang/Boolean;

    .line 43
    invoke-static {p1}, Lcom/bugsnag/android/DeviceState;->getLocationStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/DeviceState;->locationStatus:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/bugsnag/android/DeviceState;->getNetworkAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/DeviceState;->networkAccess:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceState;->getTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/DeviceState;->time:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private static getBatteryLevel(Landroid/content/Context;)Ljava/lang/Float;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 107
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 110
    const-string/jumbo v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const-string/jumbo v3, "scale"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    const-string/jumbo v1, "Could not get batteryLevel"

    invoke-static {v1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getFreeDisk()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 123
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 126
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    .line 129
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string/jumbo v0, "Could not get freeDisk"

    invoke-static {v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getFreeMemory()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLocationStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    const-string/jumbo v0, "allowed"

    .line 169
    :goto_0
    return-object v0

    .line 164
    :cond_0
    const-string/jumbo v0, "disallowed"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const-string/jumbo v0, "Could not get locationStatus"

    invoke-static {v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNetworkAccess(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    :try_start_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 179
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 182
    const-string/jumbo v0, "wifi"

    .line 196
    :goto_0
    return-object v0

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 184
    const-string/jumbo v0, "ethernet"

    goto :goto_0

    .line 188
    :cond_1
    const-string/jumbo v0, "cellular"

    goto :goto_0

    .line 191
    :cond_2
    const-string/jumbo v0, "none"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string/jumbo v0, "Could not get network access information, we recommend granting the \'android.permission.ACCESS_NETWORK_STATE\' permission"

    invoke-static {v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 89
    :pswitch_0
    const-string/jumbo v0, "landscape"

    goto :goto_0

    .line 92
    :pswitch_1
    const-string/jumbo v0, "portrait"

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/bugsnag/android/DateUtils;->toISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isCharging(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 142
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 145
    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 146
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 150
    :goto_1
    return-object v0

    .line 146
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    const-string/jumbo v1, "Could not get charging status"

    invoke-static {v1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    .line 51
    const-string/jumbo v0, "freeMemory"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/DeviceState;->freeMemory:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/Number;)Lcom/bugsnag/android/JsonWriter;

    .line 52
    iget-object v0, p0, Lcom/bugsnag/android/DeviceState;->orientation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "orientation"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/DeviceState;->orientation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/DeviceState;->batteryLevel:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 55
    const-string/jumbo v0, "batteryLevel"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/DeviceState;->batteryLevel:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/Number;)Lcom/bugsnag/android/JsonWriter;

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/android/DeviceState;->freeDisk:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 57
    const-string/jumbo v0, "freeDisk"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/DeviceState;->freeDisk:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/Number;)Lcom/bugsnag/android/JsonWriter;

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/bugsnag/android/DeviceState;->charging:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 59
    const-string/jumbo v0, "charging"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/DeviceState;->charging:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/Boolean;)V

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/bugsnag/android/DeviceState;->locationStatus:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 61
    const-string/jumbo v0, "locationStatus"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/DeviceState;->locationStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/bugsnag/android/DeviceState;->networkAccess:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 63
    const-string/jumbo v0, "networkAccess"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/DeviceState;->networkAccess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 64
    :cond_5
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/DeviceState;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 66
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    .line 67
    return-void
.end method
