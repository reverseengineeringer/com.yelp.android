.class public Landroid/support/v4/app/f$b;
.super Ljava/lang/Object;
.source "BackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/yelp/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/support/v4/app/p$a;

.field public d:Landroid/view/View;

.field final synthetic e:Landroid/support/v4/app/f;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/f;)V
    .locals 1

    .prologue
    .line 1447
    iput-object p1, p0, Landroid/support/v4/app/f$b;->e:Landroid/support/v4/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/f$b;->a:Lcom/yelp/android/g/a;

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/f$b;->b:Ljava/util/ArrayList;

    .line 1451
    new-instance v0, Landroid/support/v4/app/p$a;

    invoke-direct {v0}, Landroid/support/v4/app/p$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/f$b;->c:Landroid/support/v4/app/p$a;

    return-void
.end method
