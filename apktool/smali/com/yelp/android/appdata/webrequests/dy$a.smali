.class public Lcom/yelp/android/appdata/webrequests/dy$a;
.super Ljava/lang/Object;
.source "ReviewListRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/dy;
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
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    .line 146
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/dy$a;->c:Ljava/util/Locale;

    .line 147
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/dy$a;->b:Ljava/util/Map;

    .line 148
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/dy$a;->d:Ljava/util/List;

    .line 149
    iput p5, p0, Lcom/yelp/android/appdata/webrequests/dy$a;->e:I

    .line 150
    return-void
.end method
