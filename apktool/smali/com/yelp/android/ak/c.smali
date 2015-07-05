.class public Lcom/yelp/android/ak/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yelp/android/ak/c;->a:Ljava/lang/String;

    iput v0, p0, Lcom/yelp/android/ak/c;->b:I

    iput v0, p0, Lcom/yelp/android/ak/c;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yelp/android/ak/c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/yelp/android/ak/c;->b:I

    iput p3, p0, Lcom/yelp/android/ak/c;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/ak/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/yelp/android/ak/c;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/yelp/android/ak/c;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yelp/android/ak/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ak/c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
