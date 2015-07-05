.class public Lcom/yelp/android/appdata/webrequests/fb;
.super Ljava/lang/Object;
.source "ReviewSaveRequest.java"


# instance fields
.field private final a:Lcom/yelp/android/serializable/YelpBusiness;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/String;

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
.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/fb;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 51
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/fb;->b:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/fb;->c:Ljava/lang/String;

    .line 53
    iput-boolean p3, p0, Lcom/yelp/android/appdata/webrequests/fb;->d:Z

    .line 54
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/fb;->e:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/yelp/android/appdata/webrequests/fb;->f:Ljava/util/ArrayList;

    .line 56
    iput-object p7, p0, Lcom/yelp/android/appdata/webrequests/fb;->g:Ljava/util/ArrayList;

    .line 57
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fb;->a:Lcom/yelp/android/serializable/YelpBusiness;

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
    .line 64
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fb;->f:Ljava/util/ArrayList;

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
    .line 68
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fb;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/fb;->d:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fb;->e:Ljava/lang/String;

    return-object v0
.end method
