.class public Lcom/yelp/android/serializable/PromotedFilter;
.super Lcom/yelp/android/serializable/_PromotedFilter;
.source "PromotedFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/PromotedFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mIsOn:Z

.field protected mPromotedFilterType:Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/yelp/android/serializable/cb;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cb;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PromotedFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PromotedFilter;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_PromotedFilter;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_PromotedFilter;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterType()Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/serializable/PromotedFilter;->mPromotedFilterType:Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    return-object v0
.end method

.method public bridge synthetic getLabelAttributed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_PromotedFilter;->getLabelAttributed()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_PromotedFilter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_PromotedFilter;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/yelp/android/serializable/PromotedFilter;->mIsOn:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PromotedFilter;->readFromJson(Lorg/json/JSONObject;)V

    .line 54
    invoke-static {}, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;->values()[Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 55
    invoke-virtual {v3}, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/serializable/PromotedFilter;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    iput-object v3, p0, Lcom/yelp/android/serializable/PromotedFilter;->mPromotedFilterType:Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/yelp/android/serializable/PromotedFilter;->mPromotedFilterType:Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    if-eqz v1, :cond_2

    .line 65
    sget-object v1, Lcom/yelp/android/serializable/cc;->a:[I

    iget-object v2, p0, Lcom/yelp/android/serializable/PromotedFilter;->mPromotedFilterType:Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 71
    :cond_2
    :goto_1
    return-void

    .line 67
    :pswitch_0
    const-string/jumbo v1, "default_value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/PromotedFilter;->mIsOn:Z

    goto :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PromotedFilter;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/PromotedFilter;->mIsOn:Z

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_PromotedFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/PromotedFilter;->mIsOn:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 43
    return-void
.end method
