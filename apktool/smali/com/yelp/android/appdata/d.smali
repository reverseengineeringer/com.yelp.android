.class Lcom/yelp/android/appdata/d;
.super Ljava/lang/Thread;
.source "AppData.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/AppData;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/AppData;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/yelp/android/appdata/d;->a:Lcom/yelp/android/appdata/AppData;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 477
    :try_start_0
    invoke-static {}, Lcom/yelp/android/services/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    iget-object v1, p0, Lcom/yelp/android/appdata/d;->a:Lcom/yelp/android/appdata/AppData;

    const-string/jumbo v2, "AppData.onConfigurationChanged calling HttpRequestWrapped.reset()"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
