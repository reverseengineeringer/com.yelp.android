.class final Lcom/yelp/android/ui/activities/profile/UserProfileFragment$a;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

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
.field private final a:Lcom/yelp/android/ui/util/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/w",
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
.method public constructor <init>(Lcom/yelp/android/ui/util/w;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/w",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$a;->a:Lcom/yelp/android/ui/util/w;

    .line 692
    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$a;->b:Ljava/lang/Object;

    .line 693
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$a;->a:Lcom/yelp/android/ui/util/w;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/w;->c(Ljava/lang/Object;)V

    .line 698
    return-void
.end method
