.class public Lcom/yelp/android/ay/m;
.super Ljava/lang/Object;
.source "ConversationDraft.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ay/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/yelp/android/ay/m;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/yelp/android/ay/m;->b:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/yelp/android/ay/m;->c:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You tried to create a new ConversationDraft instance with a null userId parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    if-nez p2, :cond_1

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You attempted to create a new ConversationDraft instance with a null subject parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    if-nez p3, :cond_2

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You attempted to create a new ConversationDraft instance with a null message parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ay/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ay/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ay/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    instance-of v1, p1, Lcom/yelp/android/ay/m;

    if-eqz v1, :cond_0

    .line 55
    check-cast p1, Lcom/yelp/android/ay/m;

    .line 56
    iget-object v1, p0, Lcom/yelp/android/ay/m;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yelp/android/ay/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ay/m;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yelp/android/ay/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ay/m;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yelp/android/ay/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 60
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x1

    .line 46
    iget-object v1, p0, Lcom/yelp/android/ay/m;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    .line 47
    iget-object v1, p0, Lcom/yelp/android/ay/m;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    mul-int/2addr v0, v1

    .line 48
    iget-object v1, p0, Lcom/yelp/android/ay/m;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    mul-int/2addr v0, v1

    .line 49
    return v0
.end method
