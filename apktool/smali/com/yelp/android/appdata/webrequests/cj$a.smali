.class public Lcom/yelp/android/appdata/webrequests/cj$a;
.super Ljava/lang/Object;
.source "ListTipFeedbackRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


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

.field final synthetic d:Lcom/yelp/android/appdata/webrequests/cj;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/cj;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/yelp/android/serializable/Tip;)V
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
    .line 47
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cj$a;->d:Lcom/yelp/android/appdata/webrequests/cj;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/cj$a;->a:Ljava/util/ArrayList;

    .line 50
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/cj$a;->b:Ljava/util/ArrayList;

    .line 51
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/cj$a;->c:Lcom/yelp/android/serializable/Tip;

    .line 52
    return-void
.end method
