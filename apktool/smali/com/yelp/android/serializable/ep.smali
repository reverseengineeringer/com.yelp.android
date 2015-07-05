.class public Lcom/yelp/android/serializable/ep;
.super Ljava/lang/Object;
.source "YelpResponseMessage.java"


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/yelp/android/serializable/ep;->a:Lorg/json/JSONObject;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    const-string/jumbo v0, "text"

    iget-object v1, p0, Lcom/yelp/android/serializable/ep;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 21
    const-string/jumbo v0, "code"

    iget-object v1, p0, Lcom/yelp/android/serializable/ep;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/en;->b(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    const-string/jumbo v1, "YelpResponseMessage:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v1, "  Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ep;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v1, "  Text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ep;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
