.class Lcom/yelp/android/appdata/AppData$5$1;
.super Ljava/lang/Object;
.source "AppData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/AppData$5;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/AppData$5;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/AppData$5;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/yelp/android/appdata/AppData$5$1;->a:Lcom/yelp/android/appdata/AppData$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData$5$1;->a:Lcom/yelp/android/appdata/AppData$5;

    iget-boolean v0, v0, Lcom/yelp/android/appdata/AppData$5;->a:Z

    if-nez v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData$5$1;->a:Lcom/yelp/android/appdata/AppData$5;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yelp/android/appdata/AppData$5;->a:Z

    .line 810
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData$5$1;->a:Lcom/yelp/android/appdata/AppData$5;

    iget-object v0, v0, Lcom/yelp/android/appdata/AppData$5;->b:Lcom/yelp/android/appdata/AppData;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->x()V

    .line 812
    :cond_0
    return-void
.end method
