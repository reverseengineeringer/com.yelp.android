.class public Lcom/yelp/android/serializable/eq;
.super Ljava/lang/Object;
.source "YelpSession.java"


# static fields
.field public static a:I


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Z

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/yelp/android/serializable/ep;

.field private final j:Z

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x2

    sput v0, Lcom/yelp/android/serializable/eq;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/eq;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p1, Lcom/yelp/android/serializable/eq;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/eq;->b:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/yelp/android/serializable/eq;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/eq;->c:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/yelp/android/serializable/eq;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/eq;->d:Ljava/lang/String;

    .line 66
    iget-boolean v0, p1, Lcom/yelp/android/serializable/eq;->e:Z

    iput-boolean v0, p0, Lcom/yelp/android/serializable/eq;->e:Z

    .line 67
    iget-object v0, p1, Lcom/yelp/android/serializable/eq;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/eq;->g:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/yelp/android/serializable/eq;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/eq;->h:Ljava/lang/String;

    .line 69
    iget-boolean v0, p1, Lcom/yelp/android/serializable/eq;->j:Z

    iput-boolean v0, p0, Lcom/yelp/android/serializable/eq;->j:Z

    .line 70
    iget-boolean v0, p1, Lcom/yelp/android/serializable/eq;->f:Z

    iput-boolean v0, p0, Lcom/yelp/android/serializable/eq;->f:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/serializable/eq;->i:Lcom/yelp/android/serializable/ep;

    .line 72
    iget v0, p1, Lcom/yelp/android/serializable/eq;->k:I

    iput v0, p0, Lcom/yelp/android/serializable/eq;->k:I

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/ep;ZI)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/yelp/android/serializable/eq;->b:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/yelp/android/serializable/eq;->c:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/yelp/android/serializable/eq;->d:Ljava/lang/String;

    .line 53
    iput-boolean p4, p0, Lcom/yelp/android/serializable/eq;->e:Z

    .line 54
    iput-boolean p5, p0, Lcom/yelp/android/serializable/eq;->f:Z

    .line 55
    iput-object p6, p0, Lcom/yelp/android/serializable/eq;->g:Ljava/lang/String;

    .line 56
    iput-object p7, p0, Lcom/yelp/android/serializable/eq;->h:Ljava/lang/String;

    .line 57
    iput-object p8, p0, Lcom/yelp/android/serializable/eq;->i:Lcom/yelp/android/serializable/ep;

    .line 58
    iput-boolean p9, p0, Lcom/yelp/android/serializable/eq;->j:Z

    .line 59
    iput p10, p0, Lcom/yelp/android/serializable/eq;->k:I

    .line 60
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/eq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/yelp/android/serializable/eq;->e:Z

    .line 94
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/eq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/serializable/eq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/yelp/android/serializable/eq;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/eq;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/serializable/eq;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/yelp/android/serializable/eq;->j:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/yelp/android/serializable/eq;->f:Z

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/yelp/android/serializable/eq;->k:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    const-string/jumbo v1, "firstName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/yelp/android/serializable/eq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v1, "lastName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lcom/yelp/android/serializable/eq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v1, "isConfirmed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-boolean v1, p0, Lcom/yelp/android/serializable/eq;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v1, "userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lcom/yelp/android/serializable/eq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v1, "ismale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-boolean v1, p0, Lcom/yelp/android/serializable/eq;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
