.class public Lcom/bugsnag/android/Error;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private appData:Lcom/bugsnag/android/AppData;

.field private appState:Lcom/bugsnag/android/AppState;

.field private breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

.field private final config:Lcom/bugsnag/android/Configuration;

.field private context:Ljava/lang/String;

.field private deviceData:Lcom/bugsnag/android/DeviceData;

.field private deviceState:Lcom/bugsnag/android/DeviceState;

.field private exception:Ljava/lang/Throwable;

.field private frames:[Ljava/lang/StackTraceElement;

.field private groupingHash:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private metaData:Lcom/bugsnag/android/MetaData;

.field private name:Ljava/lang/String;

.field private severity:Lcom/bugsnag/android/Severity;

.field private user:Lcom/bugsnag/android/User;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/bugsnag/android/Severity;->WARNING:Lcom/bugsnag/android/Severity;

    iput-object v0, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    .line 30
    new-instance v0, Lcom/bugsnag/android/MetaData;

    invoke-direct {v0}, Lcom/bugsnag/android/MetaData;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    .line 43
    iput-object p1, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    .line 44
    iput-object p2, p0, Lcom/bugsnag/android/Error;->name:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/bugsnag/android/Error;->message:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/bugsnag/android/Error;->frames:[Ljava/lang/StackTraceElement;

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/bugsnag/android/Severity;->WARNING:Lcom/bugsnag/android/Severity;

    iput-object v0, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    .line 30
    new-instance v0, Lcom/bugsnag/android/MetaData;

    invoke-direct {v0}, Lcom/bugsnag/android/MetaData;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    .line 38
    iput-object p1, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    .line 39
    iput-object p2, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    .line 40
    return-void
.end method


# virtual methods
.method public addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public clearTab(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/MetaData;->clearTab(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->context:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->context:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/android/Error;->appState:Lcom/bugsnag/android/AppState;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    invoke-static {v0}, Lcom/bugsnag/android/AppState;->getActiveScreenClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getExceptionMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Error;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExceptionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Error;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMetaData()Lcom/bugsnag/android/MetaData;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    return-object v0
.end method

.method public getSeverity()Lcom/bugsnag/android/Severity;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    return-object v0
.end method

.method setAppData(Lcom/bugsnag/android/AppData;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/bugsnag/android/Error;->appData:Lcom/bugsnag/android/AppData;

    .line 303
    return-void
.end method

.method setAppState(Lcom/bugsnag/android/AppState;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/bugsnag/android/Error;->appState:Lcom/bugsnag/android/AppState;

    .line 311
    return-void
.end method

.method setBreadcrumbs(Lcom/bugsnag/android/Breadcrumbs;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/bugsnag/android/Error;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    .line 323
    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    .line 124
    return-void
.end method

.method setDeviceData(Lcom/bugsnag/android/DeviceData;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/bugsnag/android/Error;->deviceData:Lcom/bugsnag/android/DeviceData;

    .line 307
    return-void
.end method

.method setDeviceState(Lcom/bugsnag/android/DeviceState;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/bugsnag/android/Error;->deviceState:Lcom/bugsnag/android/DeviceState;

    .line 315
    return-void
.end method

.method public setGroupingHash(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/bugsnag/android/Error;->groupingHash:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setMetaData(Lcom/bugsnag/android/MetaData;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    .line 270
    return-void
.end method

.method public setSeverity(Lcom/bugsnag/android/Severity;)V
    .locals 0

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    iput-object p1, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    .line 167
    :cond_0
    return-void
.end method

.method setUser(Lcom/bugsnag/android/User;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 319
    return-void
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/bugsnag/android/User;

    invoke-direct {v0, p1, p2, p3}, Lcom/bugsnag/android/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 187
    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lcom/bugsnag/android/User;

    iget-object v1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/User;-><init>(Lcom/bugsnag/android/User;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 206
    iget-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setEmail(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/bugsnag/android/User;

    iget-object v1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/User;-><init>(Lcom/bugsnag/android/User;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 196
    iget-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setId(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/bugsnag/android/User;

    iget-object v1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/User;-><init>(Lcom/bugsnag/android/User;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 216
    iget-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setName(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method shouldIgnoreClass()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {p0}, Lcom/bugsnag/android/Error;->getExceptionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Configuration;->shouldIgnoreClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/bugsnag/android/MetaData;

    iget-object v2, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v2, v2, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/bugsnag/android/MetaData;->merge([Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/MetaData;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v2, v2, Lcom/bugsnag/android/Configuration;->filters:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/MetaData;->setFilters([Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    .line 56
    const-string/jumbo v2, "payloadVersion"

    invoke-virtual {p1, v2}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v2

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 57
    invoke-virtual {p0}, Lcom/bugsnag/android/Error;->getContext()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    const-string/jumbo v2, "context"

    invoke-virtual {p1, v2}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bugsnag/android/Error;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 59
    :cond_0
    const-string/jumbo v2, "severity"

    invoke-virtual {p1, v2}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v2

    iget-object v3, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    invoke-virtual {v2, v3}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 60
    const-string/jumbo v2, "metaData"

    invoke-virtual {p1, v2}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 62
    iget-object v1, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, v1, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 63
    const-string/jumbo v1, "projectPackages"

    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 64
    iget-object v1, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, v1, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 65
    invoke-virtual {p1, v3}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    .line 72
    const-string/jumbo v0, "exceptions"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/Exceptions;

    iget-object v2, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Lcom/bugsnag/android/Exceptions;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 78
    :goto_1
    iget-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    if-eqz v0, :cond_3

    .line 79
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/bugsnag/android/Error;->appData:Lcom/bugsnag/android/AppData;

    if-eqz v0, :cond_4

    .line 84
    const-string/jumbo v0, "app"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/bugsnag/android/Error;->appState:Lcom/bugsnag/android/AppState;

    if-eqz v0, :cond_5

    .line 88
    const-string/jumbo v0, "appState"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->appState:Lcom/bugsnag/android/AppState;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/bugsnag/android/Error;->deviceData:Lcom/bugsnag/android/DeviceData;

    if-eqz v0, :cond_6

    .line 92
    const-string/jumbo v0, "device"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/bugsnag/android/Error;->deviceState:Lcom/bugsnag/android/DeviceState;

    if-eqz v0, :cond_7

    .line 96
    const-string/jumbo v0, "deviceState"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->deviceState:Lcom/bugsnag/android/DeviceState;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 99
    :cond_7
    iget-object v0, p0, Lcom/bugsnag/android/Error;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    if-eqz v0, :cond_8

    .line 100
    const-string/jumbo v0, "breadcrumbs"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 103
    :cond_8
    iget-object v0, p0, Lcom/bugsnag/android/Error;->groupingHash:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 104
    const-string/jumbo v0, "groupingHash"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->groupingHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 107
    :cond_9
    iget-object v0, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-boolean v0, v0, Lcom/bugsnag/android/Configuration;->sendThreads:Z

    if-eqz v0, :cond_a

    .line 108
    const-string/jumbo v0, "threads"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/ThreadState;

    iget-object v2, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v1, v2}, Lcom/bugsnag/android/ThreadState;-><init>(Lcom/bugsnag/android/Configuration;)V

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 111
    :cond_a
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    .line 112
    return-void

    .line 74
    :cond_b
    const-string/jumbo v0, "exceptions"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/Exceptions;

    iget-object v2, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Error;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/bugsnag/android/Error;->message:Ljava/lang/String;

    iget-object v5, p0, Lcom/bugsnag/android/Error;->frames:[Ljava/lang/StackTraceElement;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bugsnag/android/Exceptions;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    goto/16 :goto_1
.end method
