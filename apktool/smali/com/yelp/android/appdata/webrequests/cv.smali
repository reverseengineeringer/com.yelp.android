.class public Lcom/yelp/android/appdata/webrequests/cv;
.super Ljava/lang/Object;
.source "ListTipFeedbackRequest.java"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/TipFeedback;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/yelp/android/serializable/Tip;

.field final synthetic d:Lcom/yelp/android/appdata/webrequests/cu;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/cu;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/yelp/android/serializable/Tip;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/TipFeedback;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;",
            "Lcom/yelp/android/serializable/Tip;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cv;->d:Lcom/yelp/android/appdata/webrequests/cu;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/cv;->a:Ljava/util/ArrayList;

    .line 51
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/cv;->b:Ljava/util/ArrayList;

    .line 52
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/cv;->c:Lcom/yelp/android/serializable/Tip;

    .line 53
    return-void
.end method
