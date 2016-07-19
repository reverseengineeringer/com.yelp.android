.class public Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;
.super Ljava/lang/Object;
.source "FlagsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/FlagsDialog$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/Locale;

.field final b:I


# direct methods
.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->a:Ljava/util/Locale;

    .line 207
    iput p2, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b:I

    .line 208
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b:I

    return v0
.end method

.method public b()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->a:Ljava/util/Locale;

    return-object v0
.end method
