.class public Lcom/yelp/android/appdata/webrequests/dz$a;
.super Ljava/lang/Object;
.source "ReviewSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/YelpBusiness;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lcom/yelp/android/serializable/YelpBusinessReview;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyQuestion;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;ZLjava/lang/String;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyQuestion;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 71
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->b:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->c:Ljava/lang/String;

    .line 73
    iput-boolean p3, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->d:Z

    .line 74
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->e:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 75
    iput-object p6, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->f:Ljava/util/ArrayList;

    .line 76
    iput-object p7, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->g:Ljava/util/ArrayList;

    .line 77
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyQuestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->d:Z

    return v0
.end method

.method public g()Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dz$a;->e:Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method
