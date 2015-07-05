.class public Lcom/yelp/android/util/c;
.super Ljava/lang/Object;
.source "BackupOnSave.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final a:Landroid/app/backup/BackupManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/util/c;->a:Landroid/app/backup/BackupManager;

    .line 14
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/util/c;->a:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 19
    const-string/jumbo v0, "Backup"

    const-string/jumbo v1, "Backup requested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method
