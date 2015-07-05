.class final Lcom/yelp/android/ui/activities/profile/y;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/util/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/au",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/au;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/au",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/y;->a:Lcom/yelp/android/ui/util/au;

    .line 537
    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/y;->b:Ljava/lang/Object;

    .line 538
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/y;->a:Lcom/yelp/android/ui/util/au;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/y;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/au;->b(Ljava/lang/Object;)V

    .line 543
    return-void
.end method
