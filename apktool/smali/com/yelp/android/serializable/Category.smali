.class public Lcom/yelp/android/serializable/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Lcom/yelp/android/serializable/BizCategory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/Category$b;,
        Lcom/yelp/android/serializable/Category$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/yelp/android/serializable/Category$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Category$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Category;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Category;)V
    .locals 4

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->e()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yelp/android/serializable/Category;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/yelp/android/serializable/Category;->d:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/serializable/Category;->e:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p4}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/yelp/android/serializable/Category;->c:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/yelp/android/serializable/Category;->e:I

    .line 72
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/yelp/android/serializable/Category;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/yelp/android/serializable/Category;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    if-ne p0, p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 181
    goto :goto_0

    .line 183
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/Category;

    if-nez v2, :cond_3

    move v0, v1

    .line 184
    goto :goto_0

    .line 186
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/Category;

    .line 187
    iget-object v2, p0, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 188
    iget-object v2, p1, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/yelp/android/serializable/Category;->e:I

    return v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/yelp/android/serializable/Category;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 146
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/yelp/android/serializable/Category;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 149
    const-string/jumbo v1, "category_filter"

    iget-object v2, p0, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :cond_1
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 165
    .line 167
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 168
    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/yelp/android/serializable/Category;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/yelp/android/serializable/Category;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return-void
.end method
