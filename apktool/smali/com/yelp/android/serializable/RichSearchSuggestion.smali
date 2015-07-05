.class public Lcom/yelp/android/serializable/RichSearchSuggestion;
.super Lcom/yelp/android/serializable/_RichSearchSuggestion;
.source "RichSearchSuggestion.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mRichSearchSuggestionType:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

.field protected mStyledTerm:Landroid/text/SpannableString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/serializable/cv;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cv;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;-><init>()V

    .line 43
    # getter for: Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->mTypeAsString:Ljava/lang/String;
    invoke-static {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->access$000(Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mSuggestionTypeString:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mRichSearchSuggestionType:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 45
    iput-object p2, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mTerm:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mImagePath:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mAlias:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static instantiateCommonSuggestion(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-direct {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;-><init>()V

    .line 89
    iput-object p0, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mTerm:Ljava/lang/String;

    .line 90
    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    # getter for: Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->mTypeAsString:Ljava/lang/String;
    invoke-static {v1}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->access$000(Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mSuggestionTypeString:Ljava/lang/String;

    .line 91
    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    iput-object v1, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mRichSearchSuggestionType:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 92
    return-object v0
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    instance-of v2, p1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v2, :cond_2

    .line 110
    check-cast p1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 111
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getRichSearchSuggestionType()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v3

    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getRichSearchSuggestionType()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v4

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getTerm()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getTerm()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 115
    sget-object v2, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->BUSINESS:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    if-ne v4, v2, :cond_0

    sget-object v2, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->BUSINESS:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    if-ne v3, v2, :cond_0

    move v2, v0

    .line 121
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v4, v3}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 123
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 115
    goto :goto_0

    :cond_1
    move v0, v1

    .line 121
    goto :goto_1

    :cond_2
    move v0, v1

    .line 123
    goto :goto_1
.end method

.method public bridge synthetic getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->getImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRichSearchSuggestionType()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mRichSearchSuggestionType:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    return-object v0
.end method

.method public getStyledTerm()Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mStyledTerm:Landroid/text/SpannableString;

    return-object v0
.end method

.method public bridge synthetic getSuggestionTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->getSuggestionTypeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->getTerm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 101
    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 104
    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->readFromJson(Lorg/json/JSONObject;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mSuggestionTypeString:Ljava/lang/String;

    # invokes: Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->parseRichSearchSuggestionType(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
    invoke-static {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->access$100(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mRichSearchSuggestionType:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 85
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mSuggestionTypeString:Ljava/lang/String;

    # invokes: Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->parseRichSearchSuggestionType(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
    invoke-static {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->access$100(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mRichSearchSuggestionType:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 78
    return-void
.end method

.method public setStyledTerm(Landroid/text/SpannableString;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->mStyledTerm:Landroid/text/SpannableString;

    .line 132
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
