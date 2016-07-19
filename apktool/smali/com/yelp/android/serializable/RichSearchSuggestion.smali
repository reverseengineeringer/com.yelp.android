.class public Lcom/yelp/android/serializable/RichSearchSuggestion;
.super Lcom/yelp/android/serializable/_RichSearchSuggestion;
.source "RichSearchSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
    }
.end annotation


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
.field protected a:Landroid/text/SpannableString;

.field protected b:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/yelp/android/serializable/RichSearchSuggestion$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Category;I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;-><init>()V

    .line 63
    sget-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CATEGORY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    # getter for: Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->mTypeAsString:Ljava/lang/String;
    invoke-static {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->access$000(Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->e:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CATEGORY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    iput-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->b:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 65
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->j:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->k:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->n:I

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;-><init>()V

    .line 54
    # getter for: Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->mTypeAsString:Ljava/lang/String;
    invoke-static {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->access$000(Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->e:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->b:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 56
    iput-object p2, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->f:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->h:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->j:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->k:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-direct {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;-><init>()V

    .line 109
    iput-object p0, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;->f:Ljava/lang/String;

    .line 110
    iput-object p0, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;->k:Ljava/lang/String;

    .line 111
    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    # getter for: Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->mTypeAsString:Ljava/lang/String;
    invoke-static {v1}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->access$000(Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;->e:Ljava/lang/String;

    .line 112
    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    iput-object v1, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;->b:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 113
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->b:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->a(Landroid/os/Parcel;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->e:Ljava/lang/String;

    # invokes: Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->parseRichSearchSuggestionType(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
    invoke-static {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->access$100(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->b:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 98
    return-void
.end method

.method public a(Landroid/text/SpannableString;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->a:Landroid/text/SpannableString;

    .line 171
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->a(Lorg/json/JSONObject;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->e:Ljava/lang/String;

    # invokes: Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->parseRichSearchSuggestionType(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
    invoke-static {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->access$100(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->b:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 105
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->b()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion;->a:Landroid/text/SpannableString;

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->e()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    if-ne p0, p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 139
    goto :goto_0

    .line 142
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 148
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->BUSINESS:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 144
    :cond_5
    invoke-virtual {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->n()Lcom/yelp/android/serializable/PlatformRSSTermMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->n()Lcom/yelp/android/serializable/PlatformRSSTermMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/PlatformRSSTermMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1
.end method

.method public bridge synthetic f()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->f()I

    move-result v0

    return v0
.end method

.method public bridge synthetic g()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->g()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->n()Lcom/yelp/android/serializable/PlatformRSSTermMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformRSSTermMap;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Lcom/yelp/android/serializable/PlatformRSSTermMap;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->n()Lcom/yelp/android/serializable/PlatformRSSTermMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->o()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_RichSearchSuggestion;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
