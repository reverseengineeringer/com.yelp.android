.class public Lcom/flipboard/bottomsheet/commons/a$a;
.super Ljava/lang/Object;
.source "IntentPickerSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/ComponentName;

.field public final d:Landroid/content/pm/ResolveInfo;

.field private e:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/a$a;->d:Landroid/content/pm/ResolveInfo;

    .line 90
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$a;->b:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/flipboard/bottomsheet/commons/a$a;->c:Landroid/content/ComponentName;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/commons/a$a;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$a;->e:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/commons/a$a;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/a$a;->e:Landroid/os/AsyncTask;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 96
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/a$a;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    return-object v0
.end method
