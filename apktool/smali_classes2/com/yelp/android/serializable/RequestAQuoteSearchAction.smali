.class public Lcom/yelp/android/serializable/RequestAQuoteSearchAction;
.super Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;
.source "RequestAQuoteSearchAction.java"

# interfaces
.implements Lcom/yelp/android/serializable/SearchAction;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/RequestAQuoteSearchAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/yelp/android/serializable/RequestAQuoteSearchAction$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/RequestAQuoteSearchAction$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/RequestAQuoteSearchAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->RequestAQuote:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/yelp/android/serializable/BusinessSearchResult;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchRequestAQuoteOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 26
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->a(Landroid/os/Parcel;)V

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
    .line 15
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->b()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/yelp/android/ui/activities/businesspage/g;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()[I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->e()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()[I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->f()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()[I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->g()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()[I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->h()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()[I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->i()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()[I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/yelp/android/ui/activities/businesspage/b;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/yelp/android/serializable/RequestAQuoteSearchAction;->d()Lcom/yelp/android/ui/activities/businesspage/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
