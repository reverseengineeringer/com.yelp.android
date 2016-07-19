.class public final Lcom/yelp/android/cz/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/cz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yelp/android/cz/a$a;->a:I

    iput-object p2, p0, Lcom/yelp/android/cz/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yelp/android/cz/a$a;->c:Ljava/lang/String;

    return-void
.end method
