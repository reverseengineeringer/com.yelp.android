.class public Lcom/yelp/android/serializable/j;
.super Ljava/lang/Object;
.source "YelpSession.java"


# static fields
.field public static a:I


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private final i:Z

.field private final j:Ljava/lang/String;

.field private final k:Lcom/yelp/android/serializable/i;

.field private final l:Z

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x2

    sput v0, Lcom/yelp/android/serializable/j;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/j;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iget-object v0, p1, Lcom/yelp/android/serializable/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/j;->b:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/yelp/android/serializable/j;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/j;->c:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/yelp/android/serializable/j;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/j;->d:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/yelp/android/serializable/j;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/j;->e:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/yelp/android/serializable/j;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/j;->f:Ljava/lang/String;

    .line 84
    iget-boolean v0, p1, Lcom/yelp/android/serializable/j;->g:Z

    iput-boolean v0, p0, Lcom/yelp/android/serializable/j;->g:Z

    .line 85
    iget-object v0, p1, Lcom/yelp/android/serializable/j;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/j;->h:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/yelp/android/serializable/j;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/j;->j:Ljava/lang/String;

    .line 87
    iget-boolean v0, p1, Lcom/yelp/android/serializable/j;->l:Z

    iput-boolean v0, p0, Lcom/yelp/android/serializable/j;->l:Z

    .line 88
    iget-boolean v0, p1, Lcom/yelp/android/serializable/j;->i:Z

    iput-boolean v0, p0, Lcom/yelp/android/serializable/j;->i:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/serializable/j;->k:Lcom/yelp/android/serializable/i;

    .line 90
    iget v0, p1, Lcom/yelp/android/serializable/j;->m:I

    iput v0, p0, Lcom/yelp/android/serializable/j;->m:I

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/i;ZI)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/yelp/android/serializable/j;->b:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/yelp/android/serializable/j;->c:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/yelp/android/serializable/j;->d:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/yelp/android/serializable/j;->e:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/yelp/android/serializable/j;->f:Ljava/lang/String;

    .line 69
    iput-boolean p6, p0, Lcom/yelp/android/serializable/j;->g:Z

    .line 70
    iput-boolean p7, p0, Lcom/yelp/android/serializable/j;->i:Z

    .line 71
    iput-object p8, p0, Lcom/yelp/android/serializable/j;->h:Ljava/lang/String;

    .line 72
    iput-object p9, p0, Lcom/yelp/android/serializable/j;->j:Ljava/lang/String;

    .line 73
    iput-object p10, p0, Lcom/yelp/android/serializable/j;->k:Lcom/yelp/android/serializable/i;

    .line 74
    iput-boolean p11, p0, Lcom/yelp/android/serializable/j;->l:Z

    .line 75
    iput p12, p0, Lcom/yelp/android/serializable/j;->m:I

    .line 76
    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/j;Ljava/lang/String;)Lcom/yelp/android/serializable/j;
    .locals 13

    .prologue
    .line 186
    new-instance v0, Lcom/yelp/android/serializable/j;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yelp/android/serializable/j;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yelp/android/serializable/j;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yelp/android/serializable/j;->f()Z

    move-result v6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/j;->j()Z

    move-result v7

    invoke-virtual {p0}, Lcom/yelp/android/serializable/j;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/yelp/android/serializable/j;->k()Lcom/yelp/android/serializable/i;

    move-result-object v10

    invoke-virtual {p0}, Lcom/yelp/android/serializable/j;->i()Z

    move-result v11

    invoke-virtual {p0}, Lcom/yelp/android/serializable/j;->l()I

    move-result v12

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/yelp/android/serializable/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/i;ZI)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/yelp/android/serializable/j;->h:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/yelp/android/serializable/j;->g:Z

    .line 120
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/serializable/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/serializable/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/serializable/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/serializable/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/yelp/android/serializable/j;->g:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/serializable/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/serializable/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/yelp/android/serializable/j;->l:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/yelp/android/serializable/j;->i:Z

    return v0
.end method

.method public k()Lcom/yelp/android/serializable/i;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yelp/android/serializable/j;->k:Lcom/yelp/android/serializable/i;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/yelp/android/serializable/j;->m:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    const-string/jumbo v1, "firstName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Lcom/yelp/android/serializable/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo v1, "lastName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lcom/yelp/android/serializable/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v1, "name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lcom/yelp/android/serializable/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v1, "nameWithoutPeriod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lcom/yelp/android/serializable/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v1, "isConfirmed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-boolean v1, p0, Lcom/yelp/android/serializable/j;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v1, "userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lcom/yelp/android/serializable/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string/jumbo v1, "ismale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-boolean v1, p0, Lcom/yelp/android/serializable/j;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
