.class public Lcom/yelp/android/appdata/webrequests/ez;
.super Ljava/lang/Object;
.source "ReviewListRequest.java"


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

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Locale;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Locale;Ljava/util/Map;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    .line 125
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ez;->c:Ljava/util/Locale;

    .line 126
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ez;->b:Ljava/util/Map;

    .line 127
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/ez;->d:Ljava/util/List;

    .line 128
    iput p5, p0, Lcom/yelp/android/appdata/webrequests/ez;->e:I

    .line 129
    return-void
.end method
