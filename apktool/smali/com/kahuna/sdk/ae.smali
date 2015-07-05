.class Lcom/kahuna/sdk/ae;
.super Lcom/yelp/android/ao/f;
.source "KahunaInternalDebugManager.java"


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/ad;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/ad;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/kahuna/sdk/ae;->a:Lcom/kahuna/sdk/ad;

    invoke-direct {p0}, Lcom/yelp/android/ao/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 370
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 371
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Successfully sent monitor request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 363
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ao/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 364
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to send monitor request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    :cond_0
    return-void
.end method
