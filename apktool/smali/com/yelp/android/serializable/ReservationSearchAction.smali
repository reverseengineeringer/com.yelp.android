.class public Lcom/yelp/android/serializable/ReservationSearchAction;
.super Lcom/yelp/android/serializable/_ReservationSearchAction;
.source "ReservationSearchAction.java"

# interfaces
.implements Lcom/yelp/android/serializable/SearchAction;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ReservationSearchAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHighlightedBusinessInfo:Lcom/yelp/android/ui/activities/businesspage/cf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/yelp/android/serializable/cm;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cm;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReservationSearchAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 63
    const/4 v0, 0x1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 69
    check-cast p1, Lcom/yelp/android/serializable/ReservationSearchAction;

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->isDisabled()Z

    move-result v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->isDisabled()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getPartySize()I

    move-result v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getPartySize()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getTextColor()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getTextColor()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getDefaultColorTop()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getDefaultColorTop()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getDefaultColorBottom()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getDefaultColorBottom()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getSelectedColorTop()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getSelectedColorTop()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getSelectedColorBottom()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getSelectedColorBottom()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getBorderColor()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getBorderColor()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto/16 :goto_0

    .line 77
    :cond_5
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 80
    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 83
    :cond_7
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto/16 :goto_0
.end method

.method public bridge synthetic getBorderColor()[I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->getBorderColor()[I

    move-result-object v0

    return-object v0
.end method

.method public getBusinessListButton()Lcom/yelp/android/ui/activities/businesspage/cf;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/serializable/ReservationSearchAction;->mHighlightedBusinessInfo:Lcom/yelp/android/ui/activities/businesspage/cf;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/yelp/android/serializable/cl;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/serializable/cl;-><init>(Lcom/yelp/android/serializable/ReservationSearchAction;Lcom/yelp/android/serializable/SearchAction;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/ReservationSearchAction;->mHighlightedBusinessInfo:Lcom/yelp/android/ui/activities/businesspage/cf;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/ReservationSearchAction;->mHighlightedBusinessInfo:Lcom/yelp/android/ui/activities/businesspage/cf;

    return-object v0
.end method

.method public bridge synthetic getBusinessListButton()Lcom/yelp/android/ui/activities/businesspage/o;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->getBusinessListButton()Lcom/yelp/android/ui/activities/businesspage/cf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultColorBottom()[I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->getDefaultColorBottom()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultColorTop()[I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->getDefaultColorTop()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPartySize()I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->getPartySize()I

    move-result v0

    return v0
.end method

.method public getSearchActionType()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Reservation:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    return-object v0
.end method

.method public bridge synthetic getSelectedColorBottom()[I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->getSelectedColorBottom()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSelectedColorTop()[I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->getSelectedColorTop()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTextColor()[I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->getTextColor()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDisabled()Z
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public onPressed(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p1, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;)Landroid/content/Intent;

    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReservationSearchAction;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReservationSearchAction;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ReservationSearchAction;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
