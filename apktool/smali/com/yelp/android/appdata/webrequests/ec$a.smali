.class public Lcom/yelp/android/appdata/webrequests/ec$a;
.super Ljava/lang/Object;
.source "ReviewStartRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/yelp/android/ui/activities/reviews/ReviewState;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewThreshold;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/yelp/android/serializable/ReviewDraft;

.field d:Lcom/yelp/android/serializable/Review;

.field final synthetic e:Lcom/yelp/android/appdata/webrequests/ec;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ec;Lcom/yelp/android/ui/activities/reviews/ReviewState;Ljava/util/ArrayList;Lcom/yelp/android/serializable/ReviewDraft;Lcom/yelp/android/serializable/Review;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/reviews/ReviewState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewThreshold;",
            ">;",
            "Lcom/yelp/android/serializable/ReviewDraft;",
            "Lcom/yelp/android/serializable/Review;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ec$a;->e:Lcom/yelp/android/appdata/webrequests/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ec$a;->a:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 39
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ec$a;->b:Ljava/util/ArrayList;

    .line 40
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/ec$a;->c:Lcom/yelp/android/serializable/ReviewDraft;

    .line 41
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/ec$a;->d:Lcom/yelp/android/serializable/Review;

    .line 42
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/reviews/ReviewState;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ec$a;->a:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewThreshold;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ec$a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()Lcom/yelp/android/serializable/ReviewDraft;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ec$a;->c:Lcom/yelp/android/serializable/ReviewDraft;

    return-object v0
.end method

.method public d()Lcom/yelp/android/serializable/Review;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ec$a;->d:Lcom/yelp/android/serializable/Review;

    return-object v0
.end method
