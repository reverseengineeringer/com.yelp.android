.class public Lcom/yelp/android/serializable/CallForReservationsSearchAction;
.super Lcom/yelp/android/serializable/_CallForReservationsSearchAction;
.source "CallForReservationsSearchAction.java"

# interfaces
.implements Lcom/yelp/android/serializable/SearchAction;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/CallForReservationsSearchAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private j:Lcom/yelp/android/ui/activities/businesspage/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/yelp/android/serializable/CallForReservationsSearchAction$2;

    invoke-direct {v0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction$2;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Call:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/yelp/android/serializable/BusinessSearchResult;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/util/k;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/yelp/android/g/a;

    invoke-direct {v1}, Lcom/yelp/android/g/a;-><init>()V

    .line 69
    const-string/jumbo v2, "scheme"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v2, "id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SearchCall:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->a(Landroid/os/Parcel;)V

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
    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/yelp/android/ui/activities/businesspage/g;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->j:Lcom/yelp/android/ui/activities/businesspage/g;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/yelp/android/serializable/CallForReservationsSearchAction$1;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction$1;-><init>(Lcom/yelp/android/serializable/CallForReservationsSearchAction;Lcom/yelp/android/serializable/SearchAction;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->j:Lcom/yelp/android/ui/activities/businesspage/g;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->j:Lcom/yelp/android/ui/activities/businesspage/g;

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()[I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->e()[I

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    if-ne p0, p1, :cond_1

    .line 79
    const/4 v0, 0x1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 85
    check-cast p1, Lcom/yelp/android/serializable/CallForReservationsSearchAction;

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->j()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->j()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->i()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->i()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->h()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->h()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->g()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->g()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->f()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->f()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->e()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->e()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto/16 :goto_0

    .line 87
    :cond_5
    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 92
    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 97
    :cond_7
    invoke-virtual {p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto/16 :goto_0
.end method

.method public bridge synthetic f()[I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->f()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()[I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->g()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()[I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->h()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()[I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->i()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()[I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/yelp/android/ui/activities/businesspage/b;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->d()Lcom/yelp/android/ui/activities/businesspage/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_CallForReservationsSearchAction;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
