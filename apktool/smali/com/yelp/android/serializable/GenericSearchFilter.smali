.class public Lcom/yelp/android/serializable/GenericSearchFilter;
.super Lcom/yelp/android/serializable/_GenericSearchFilter;
.source "GenericSearchFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/GenericSearchFilter$2;,
        Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/GenericSearchFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/yelp/android/serializable/GenericSearchFilter$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/GenericSearchFilter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/GenericSearchFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/serializable/_GenericSearchFilter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;Z)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p2}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->name()Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, v0}, Lcom/yelp/android/serializable/_GenericSearchFilter;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 42
    iput-object p2, p0, Lcom/yelp/android/serializable/GenericSearchFilter;->e:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    .line 43
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Boolean:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/yelp/android/serializable/_GenericSearchFilter;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 53
    sget-object v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Boolean:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericSearchFilter;->e:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    .line 54
    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/GenericSearchFilter;)Lcom/yelp/android/serializable/GenericSearchFilter;
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lcom/yelp/android/util/d;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/GenericSearchFilter;Z)Lcom/yelp/android/serializable/GenericSearchFilter;
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcom/yelp/android/util/d;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    .line 81
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/GenericSearchFilter;->a(Z)V

    .line 82
    return-object v0
.end method

.method static synthetic b(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/GenericSearchFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p0}, Lcom/yelp/android/serializable/GenericSearchFilter;->c(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/GenericSearchFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->getFilterType(Ljava/lang/String;)Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$2;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 103
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Does not know how to parse filter of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :pswitch_0
    sget-object v0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    .line 106
    :goto_0
    return-object v0

    .line 93
    :pswitch_1
    sget-object v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->CREATOR:Lcom/yelp/android/serializable/a;

    invoke-virtual {v0, p0}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    goto :goto_0

    .line 96
    :pswitch_2
    sget-object v0, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;->CREATOR:Lcom/yelp/android/serializable/a;

    invoke-virtual {v0, p0}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    goto :goto_0

    .line 99
    :pswitch_3
    new-instance v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;-><init>()V

    .line 100
    invoke-virtual {v0, p0}, Lcom/yelp/android/serializable/GenericSearchFilter;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericSearchFilter;->e:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_GenericSearchFilter;->a(Landroid/os/Parcel;)V

    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/serializable/GenericSearchFilter;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->getFilterType(Ljava/lang/String;)Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericSearchFilter;->e:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    .line 113
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
    .line 117
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_GenericSearchFilter;->a(Lorg/json/JSONObject;)V

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/serializable/GenericSearchFilter;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->getFilterType(Ljava/lang/String;)Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericSearchFilter;->e:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    .line 119
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/yelp/android/serializable/GenericSearchFilter;->c:Z

    .line 133
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/serializable/GenericSearchFilter;->d:Z

    .line 134
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic b()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_GenericSearchFilter;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_GenericSearchFilter;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_GenericSearchFilter;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_GenericSearchFilter;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_GenericSearchFilter;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_GenericSearchFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_GenericSearchFilter;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_GenericSearchFilter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
