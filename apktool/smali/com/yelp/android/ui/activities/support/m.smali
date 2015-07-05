.class public final Lcom/yelp/android/ui/activities/support/m;
.super Ljava/lang/Object;
.source "YelpActivityHelper.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/l;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    if-nez p1, :cond_0

    .line 742
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Must be a non null Activity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/m;->a:Landroid/app/Activity;

    .line 745
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/m;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/m;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 752
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/m;->a:Landroid/app/Activity;

    .line 753
    return-void
.end method
