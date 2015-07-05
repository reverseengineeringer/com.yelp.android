.class Lcom/yelp/android/appdata/f;
.super Ljava/lang/Object;
.source "AppData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/e;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/yelp/android/appdata/f;->a:Lcom/yelp/android/appdata/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/yelp/android/appdata/f;->a:Lcom/yelp/android/appdata/e;

    iget-boolean v0, v0, Lcom/yelp/android/appdata/e;->a:Z

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/yelp/android/appdata/f;->a:Lcom/yelp/android/appdata/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yelp/android/appdata/e;->a:Z

    .line 673
    iget-object v0, p0, Lcom/yelp/android/appdata/f;->a:Lcom/yelp/android/appdata/e;

    iget-object v0, v0, Lcom/yelp/android/appdata/e;->b:Lcom/yelp/android/appdata/AppData;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->s()V

    .line 675
    :cond_0
    return-void
.end method
