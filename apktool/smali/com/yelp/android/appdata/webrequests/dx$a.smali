.class public Lcom/yelp/android/appdata/webrequests/dx$a;
.super Ljava/lang/Object;
.source "ReviewListFilteredRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Lcom/yelp/android/serializable/MenuItem;

.field public final d:Lcom/yelp/android/serializable/MoreInfoAction;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/yelp/android/serializable/MenuItem;Lcom/yelp/android/serializable/MoreInfoAction;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;I",
            "Lcom/yelp/android/serializable/MenuItem;",
            "Lcom/yelp/android/serializable/MoreInfoAction;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dx$a;->a:Ljava/util/List;

    .line 76
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/dx$a;->b:I

    .line 77
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/dx$a;->c:Lcom/yelp/android/serializable/MenuItem;

    .line 78
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/dx$a;->d:Lcom/yelp/android/serializable/MoreInfoAction;

    .line 79
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/dx$a;->e:Ljava/lang/String;

    .line 80
    return-void
.end method
