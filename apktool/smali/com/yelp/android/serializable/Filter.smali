.class public Lcom/yelp/android/serializable/Filter;
.super Lcom/yelp/android/serializable/_Filter;
.source "Filter.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/yelp/android/serializable/Filter$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Filter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Filter;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/yelp/android/serializable/Distance;

    const-string/jumbo v1, ""

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/serializable/Distance;-><init>(Ljava/lang/String;D)V

    sget-object v1, Lcom/yelp/android/serializable/Sort;->Default:Lcom/yelp/android/serializable/Sort;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;)V
    .locals 1

    .prologue
    .line 26
    if-nez p2, :cond_0

    sget-object p2, Lcom/yelp/android/serializable/Sort;->Default:Lcom/yelp/android/serializable/Sort;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;Ljava/util/List;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Distance;",
            "Lcom/yelp/android/serializable/Sort;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/GenericSearchFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Filter;-><init>()V

    .line 34
    if-nez p1, :cond_0

    new-instance p1, Lcom/yelp/android/serializable/Distance;

    const-string/jumbo v0, ""

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v2, v3}, Lcom/yelp/android/serializable/Distance;-><init>(Ljava/lang/String;D)V

    :cond_0
    iput-object p1, p0, Lcom/yelp/android/serializable/Filter;->a:Lcom/yelp/android/serializable/Distance;

    .line 36
    if-nez p2, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Please use one of the known sorting values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/serializable/Sort;->values()[Lcom/yelp/android/serializable/Sort;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    iput-object p2, p0, Lcom/yelp/android/serializable/Filter;->c:Lcom/yelp/android/serializable/Sort;

    .line 41
    iput-object p3, p0, Lcom/yelp/android/serializable/Filter;->b:Ljava/util/List;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Filter;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Filter;-><init>()V

    .line 45
    iget-object v0, p1, Lcom/yelp/android/serializable/Filter;->a:Lcom/yelp/android/serializable/Distance;

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->a:Lcom/yelp/android/serializable/Distance;

    .line 46
    iget-object v0, p1, Lcom/yelp/android/serializable/Filter;->c:Lcom/yelp/android/serializable/Sort;

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->c:Lcom/yelp/android/serializable/Sort;

    .line 47
    iget-object v0, p1, Lcom/yelp/android/serializable/Filter;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->b:Ljava/util/List;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Sort;)V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/serializable/Distance;

    const-string/jumbo v1, ""

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/serializable/Distance;-><init>(Ljava/lang/String;D)V

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0}, Lcom/yelp/android/serializable/_Filter;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "sort"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Filter;->b()Lcom/yelp/android/serializable/Sort;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Sort;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Filter;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Lcom/yelp/android/serializable/GenericSearchFilter;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->b:Ljava/util/List;

    .line 72
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    .line 74
    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/GenericSearchFilter;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    add-int/lit8 v1, v1, -0x1

    .line 72
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
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
    .line 52
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Filter;->a(Lorg/json/JSONObject;)V

    .line 53
    const-string/jumbo v0, "sort"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Sort;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Sort;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->c:Lcom/yelp/android/serializable/Sort;

    .line 54
    return-void
.end method

.method public bridge synthetic b()Lcom/yelp/android/serializable/Sort;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_Filter;->b()Lcom/yelp/android/serializable/Sort;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_Filter;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/yelp/android/serializable/Distance;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_Filter;->d()Lcom/yelp/android/serializable/Distance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_Filter;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Filter;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_Filter;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Filter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
