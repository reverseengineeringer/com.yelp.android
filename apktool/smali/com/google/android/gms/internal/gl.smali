.class public Lcom/google/android/gms/internal/gl;
.super Lcom/yelp/android/bb/a$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/yelp/android/bb/a$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gl;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/gl;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gl;->b:I

    return v0
.end method
