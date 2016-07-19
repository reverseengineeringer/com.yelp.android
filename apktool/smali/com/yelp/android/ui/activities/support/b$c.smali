.class public final Lcom/yelp/android/ui/activities/support/b$c;
.super Ljava/lang/Object;
.source "YelpActivityHelper.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    if-nez p1, :cond_0

    .line 718
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Must be a non null Activity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b$c;->a:Landroid/app/Activity;

    .line 721
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
    .line 725
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b$c;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b$c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 728
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b$c;->a:Landroid/app/Activity;

    .line 729
    return-void
.end method
