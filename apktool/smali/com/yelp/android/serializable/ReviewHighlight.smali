.class public Lcom/yelp/android/serializable/ReviewHighlight;
.super Lcom/yelp/android/serializable/_ReviewHighlight;
.source "ReviewHighlight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ReviewHighlight;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/yelp/android/serializable/ReviewHighlight$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewHighlight$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReviewHighlight;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 5

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewHighlight;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewHighlight;->h:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewHighlight;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/ReviewHighlight;->h:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewHighlight;->h:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewHighlight;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewHighlight;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewHighlight;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ReviewHighlight;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
