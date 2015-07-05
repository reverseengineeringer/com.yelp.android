.class public Lcom/comscore/utils/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lcom/comscore/analytics/a;


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/g;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Lcom/comscore/utils/g;->b:Lcom/comscore/analytics/a;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 6

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    const/4 v0, 0x5

    if-ge v1, v0, :cond_1

    aget-object v0, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    const-string/jumbo v0, "ns_ap_uxc"

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    :try_start_1
    const-string/jumbo v0, "ns_ap_uxs"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v0, p0, Lcom/comscore/utils/g;->b:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->p()Lcom/comscore/utils/j;

    move-result-object v0

    sget-object v2, Lcom/comscore/applications/EventType;->HIDDEN:Lcom/comscore/applications/EventType;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/comscore/utils/j;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Error encoding the URL (ns_ap_uxc)"

    invoke-static {p0, v2}, Lcom/comscore/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Error encoding the URL (ns_ap_uxs)"

    invoke-static {p0, v2}, Lcom/comscore/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Exception;)V

    goto :goto_3
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/comscore/utils/g;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/comscore/utils/g;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
